.class public Lcom/helger/jcodemodel/JConditional;
.super Ljava/lang/Object;
.source "JConditional.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

.field private final m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aThenBlock:Lcom/helger/jcodemodel/JBlock;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aThenBlock:Lcom/helger/jcodemodel/JBlock;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Test expression"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 76
    return-void
.end method


# virtual methods
.method public _else()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public _elseif(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JConditional;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JConditional;->_else()Lcom/helger/jcodemodel/JBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JBlock;->_if(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JConditional;

    move-result-object v0

    return-object v0
.end method

.method public _then()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aThenBlock:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    sget-object v1, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aThenBlock:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JBlock;->generateBody(Lcom/helger/jcodemodel/JFormatter;)V

    .line 146
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    sget-object v1, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JBlock;->generateBody(Lcom/helger/jcodemodel/JFormatter;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v0}, Lcom/helger/jcodemodel/JOp;->hasTopOp(Lcom/helger/jcodemodel/IJExpression;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    const-string v0, "if "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aThenBlock:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 143
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_2

    .line 144
    const-string v0, "else"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JConditional;->m_aElseBlock:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 145
    :cond_2
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "if ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1
.end method

.method public test()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/helger/jcodemodel/JConditional;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method
