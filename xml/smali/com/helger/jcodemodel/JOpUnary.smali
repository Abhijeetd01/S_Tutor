.class public Lcom/helger/jcodemodel/JOpUnary;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JOpUnary.java"


# instance fields
.field private final m_aExpr:Lcom/helger/jcodemodel/IJExpression;

.field private final m_bOperatorComesFirst:Z

.field private final m_sOperator:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 65
    const-string v0, "Operator"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    .line 66
    const-string v0, "Expression"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 58
    const-string v0, "Operator"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    .line 59
    const-string v0, "Expression"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JOpUnary;

    .line 107
    iget-object v2, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    iget-boolean v3, p1, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public expr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/16 v2, 0x29

    const/16 v1, 0x28

    .line 93
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpUnary;->m_aExpr:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public op()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_sOperator:Ljava/lang/String;

    return-object v0
.end method

.method public opFirst()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JOpUnary;->m_bOperatorComesFirst:Z

    return v0
.end method
