.class public Lcom/helger/jcodemodel/JLambda;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JLambda.java"


# instance fields
.field private final m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

.field private final m_aParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JLambdaParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/helger/jcodemodel/JLambdaBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JLambdaBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    .line 63
    return-void
.end method


# virtual methods
.method public addParam(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JLambdaParam;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/helger/jcodemodel/JLambdaParam;

    invoke-direct {v0, p1, p2}, Lcom/helger/jcodemodel/JLambdaParam;-><init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v0
.end method

.method public addParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JLambdaParam;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 75
    new-instance v1, Lcom/helger/jcodemodel/JLambdaParam;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJType;

    invoke-direct {v1, v0, p1}, Lcom/helger/jcodemodel/JLambdaParam;-><init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v1
.end method

.method public body()Lcom/helger/jcodemodel/JLambdaBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 7
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 122
    if-nez v5, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lambda expression needs at least one parameter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JLambdaParam;

    move v4, v3

    .line 125
    :goto_0
    if-ge v4, v5, :cond_2

    .line 126
    iget-object v1, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helger/jcodemodel/JLambdaParam;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JLambdaParam;->hasType()Z

    move-result v1

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JLambdaParam;->hasType()Z

    move-result v6

    if-eq v1, v6, :cond_1

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lambda expression parameters must all have types or none may have a type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JLambdaBlock;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lambda expression is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    if-ne v5, v3, :cond_5

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JLambdaParam;->hasType()Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JLambdaParam;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JLambdaParam;->declare(Lcom/helger/jcodemodel/JFormatter;)V

    .line 148
    :goto_1
    const-string v0, " -> "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 150
    iget-object v1, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JLambdaBlock;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JLambdaBlock;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/helger/jcodemodel/IJExpression;

    if-nez v0, :cond_8

    :cond_4
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JLambdaBlock;->bracesRequired(Z)Lcom/helger/jcodemodel/JBlock;

    .line 151
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aBodyStatement:Lcom/helger/jcodemodel/JLambdaBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 152
    return-void

    .line 139
    :cond_5
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move v1, v2

    .line 140
    :goto_3
    if-ge v1, v5, :cond_7

    .line 142
    if-lez v1, :cond_6

    .line 143
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JLambdaParam;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JLambdaParam;->declare(Lcom/helger/jcodemodel/JFormatter;)V

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 146
    :cond_7
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    :cond_8
    move v0, v2

    .line 150
    goto :goto_2
.end method

.method public paramCount()I
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public params()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JLambdaParam;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/helger/jcodemodel/JLambda;->m_aParams:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
