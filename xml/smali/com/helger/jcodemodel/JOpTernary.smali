.class public Lcom/helger/jcodemodel/JOpTernary;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JOpTernary.java"


# instance fields
.field private final m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

.field private final m_sOperator1:Ljava/lang/String;

.field private final m_sOperator2:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 64
    const-string v0, "Expr1"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

    .line 65
    const-string v0, "Operator1"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator1:Ljava/lang/String;

    .line 66
    const-string v0, "Expr2"

    invoke-static {p3, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

    .line 67
    const-string v0, "Operator2"

    invoke-static {p4, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator2:Ljava/lang/String;

    .line 68
    const-string v0, "Expr3"

    invoke-static {p5, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    iput-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JOpTernary;

    .line 120
    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator1:Ljava/lang/String;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator1:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator2:Ljava/lang/String;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator2:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public expr1()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public expr2()Lcom/helger/jcodemodel/IJGenerable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public expr3()Lcom/helger/jcodemodel/IJGenerable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 103
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 110
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr1:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr2:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/helger/jcodemodel/JOpTernary;->m_aExpr3:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public op1()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator1:Ljava/lang/String;

    return-object v0
.end method

.method public op2()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/helger/jcodemodel/JOpTernary;->m_sOperator2:Ljava/lang/String;

    return-object v0
.end method
