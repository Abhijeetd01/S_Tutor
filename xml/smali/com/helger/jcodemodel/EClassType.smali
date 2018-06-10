.class public final enum Lcom/helger/jcodemodel/EClassType;
.super Ljava/lang/Enum;
.source "EClassType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helger/jcodemodel/EClassType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helger/jcodemodel/EClassType;

.field public static final enum ANNOTATION_TYPE_DECL:Lcom/helger/jcodemodel/EClassType;

.field public static final enum CLASS:Lcom/helger/jcodemodel/EClassType;

.field public static final enum ENUM:Lcom/helger/jcodemodel/EClassType;

.field public static final enum INTERFACE:Lcom/helger/jcodemodel/EClassType;


# instance fields
.field private final m_sDeclarationToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/helger/jcodemodel/EClassType;

    const-string v1, "CLASS"

    const-string v2, "class"

    invoke-direct {v0, v1, v3, v2}, Lcom/helger/jcodemodel/EClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    .line 54
    new-instance v0, Lcom/helger/jcodemodel/EClassType;

    const-string v1, "INTERFACE"

    const-string v2, "interface"

    invoke-direct {v0, v1, v4, v2}, Lcom/helger/jcodemodel/EClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/EClassType;->INTERFACE:Lcom/helger/jcodemodel/EClassType;

    .line 55
    new-instance v0, Lcom/helger/jcodemodel/EClassType;

    const-string v1, "ANNOTATION_TYPE_DECL"

    const-string v2, "@interface"

    invoke-direct {v0, v1, v5, v2}, Lcom/helger/jcodemodel/EClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/EClassType;->ANNOTATION_TYPE_DECL:Lcom/helger/jcodemodel/EClassType;

    .line 56
    new-instance v0, Lcom/helger/jcodemodel/EClassType;

    const-string v1, "ENUM"

    const-string v2, "enum"

    invoke-direct {v0, v1, v6, v2}, Lcom/helger/jcodemodel/EClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/EClassType;->ENUM:Lcom/helger/jcodemodel/EClassType;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/helger/jcodemodel/EClassType;

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->INTERFACE:Lcom/helger/jcodemodel/EClassType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->ANNOTATION_TYPE_DECL:Lcom/helger/jcodemodel/EClassType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->ENUM:Lcom/helger/jcodemodel/EClassType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/helger/jcodemodel/EClassType;->$VALUES:[Lcom/helger/jcodemodel/EClassType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/helger/jcodemodel/EClassType;->m_sDeclarationToken:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helger/jcodemodel/EClassType;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/helger/jcodemodel/EClassType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/EClassType;

    return-object v0
.end method

.method public static values()[Lcom/helger/jcodemodel/EClassType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->$VALUES:[Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {v0}, [Lcom/helger/jcodemodel/EClassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/EClassType;

    return-object v0
.end method


# virtual methods
.method public declarationToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helger/jcodemodel/EClassType;->m_sDeclarationToken:Ljava/lang/String;

    return-object v0
.end method
