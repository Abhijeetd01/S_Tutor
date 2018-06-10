.class public Lcom/helger/jcodemodel/JWhileLoop;
.super Ljava/lang/Object;
.source "JWhileLoop.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private m_aBody:Lcom/helger/jcodemodel/JBlock;

.field private final m_aTextExpr:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aTextExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 69
    return-void
.end method


# virtual methods
.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aTextExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v0}, Lcom/helger/jcodemodel/JOp;->hasTopOp(Lcom/helger/jcodemodel/IJExpression;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "while "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aTextExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 99
    :goto_1
    return-void

    .line 93
    :cond_0
    const-string v0, "while ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aTextExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 98
    :cond_1
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1
.end method

.method public test()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/helger/jcodemodel/JWhileLoop;->m_aTextExpr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method
