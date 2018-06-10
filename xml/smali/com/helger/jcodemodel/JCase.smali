.class public Lcom/helger/jcodemodel/JCase;
.super Ljava/lang/Object;
.source "JCase.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private m_aBody:Lcom/helger/jcodemodel/JBlock;

.field private final m_aLabelExpr:Lcom/helger/jcodemodel/IJExpression;

.field private m_bIsDefaultCase:Z


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JCase;-><init>(Lcom/helger/jcodemodel/IJExpression;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/helger/jcodemodel/IJExpression;Z)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JCase;->m_bIsDefaultCase:Z

    .line 89
    iput-object p1, p0, Lcom/helger/jcodemodel/JCase;->m_aLabelExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 90
    iput-boolean p2, p0, Lcom/helger/jcodemodel/JCase;->m_bIsDefaultCase:Z

    .line 91
    return-void
.end method


# virtual methods
.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helger/jcodemodel/JCase;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCase;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JCase;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public isDefaultCase()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JCase;->m_bIsDefaultCase:Z

    return v0
.end method

.method public label()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/helger/jcodemodel/JCase;->m_aLabelExpr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    .line 115
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JCase;->m_bIsDefaultCase:Z

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "default:"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JCase;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/helger/jcodemodel/JCase;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    .line 126
    return-void

    .line 121
    :cond_1
    const-string v0, "case "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JCase;->m_aLabelExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method
