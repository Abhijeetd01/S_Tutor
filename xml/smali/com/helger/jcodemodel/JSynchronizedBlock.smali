.class public Lcom/helger/jcodemodel/JSynchronizedBlock;
.super Ljava/lang/Object;
.source "JSynchronizedBlock.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private m_aBody:Lcom/helger/jcodemodel/JBlock;

.field private m_aExpression:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JSynchronizedBlock;->expr(Lcom/helger/jcodemodel/IJExpression;)V

    .line 59
    return-void
.end method


# virtual methods
.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public expr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aExpression:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public expr(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "expression"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aExpression:Lcom/helger/jcodemodel/IJExpression;

    .line 66
    return-void
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 84
    const-string v0, "synchronized ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aExpression:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 85
    iget-object v0, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JSynchronizedBlock;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 89
    :goto_0
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 90
    return-void

    .line 88
    :cond_0
    const-string/jumbo v0, "{}"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method
