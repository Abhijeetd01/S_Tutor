.class public final enum Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;
.super Ljava/lang/Enum;
.source "JTypeWildcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/JTypeWildcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EBoundMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

.field public static final enum EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

.field public static final enum SUPER:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;


# instance fields
.field private final _declarationTokens:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    const-string v1, "EXTENDS"

    const-string v2, "? extends "

    invoke-direct {v0, v1, v3, v2}, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    .line 65
    new-instance v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    const-string v1, "SUPER"

    const-string v2, "? super "

    invoke-direct {v0, v1, v4, v2}, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->SUPER:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->SUPER:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->$VALUES:[Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->_declarationTokens:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    return-object v0
.end method

.method public static values()[Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->$VALUES:[Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-virtual {v0}, [Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    return-object v0
.end method


# virtual methods
.method public declarationTokens()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->_declarationTokens:Ljava/lang/String;

    return-object v0
.end method
