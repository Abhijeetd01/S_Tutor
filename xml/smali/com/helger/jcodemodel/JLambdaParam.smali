.class public Lcom/helger/jcodemodel/JLambdaParam;
.super Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;
.source "JLambdaParam.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;


# instance fields
.field private final m_aType:Lcom/helger/jcodemodel/AbstractJType;

.field private final m_sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;-><init>()V

    .line 59
    invoke-static {p2}, Lcom/helger/jcodemodel/JJavaName;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal variable name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 62
    iput-object p2, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_sName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 87
    return-void
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 92
    return-void
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambdaParam;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method
