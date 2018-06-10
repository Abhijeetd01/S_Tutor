.class public Lcom/helger/jcodemodel/JSwitch;
.super Ljava/lang/Object;
.source "JSwitch.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private final m_aCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JCase;",
            ">;"
        }
    .end annotation
.end field

.field private m_aDefaultCase:Lcom/helger/jcodemodel/JCase;

.field private final m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aCases:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/helger/jcodemodel/JSwitch;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 78
    return-void
.end method


# virtual methods
.method public _case(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JCase;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/helger/jcodemodel/JCase;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JCase;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    .line 96
    iget-object v1, p0, Lcom/helger/jcodemodel/JSwitch;->m_aCases:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v0
.end method

.method public _default()Lcom/helger/jcodemodel/JCase;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aDefaultCase:Lcom/helger/jcodemodel/JCase;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/helger/jcodemodel/JCase;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JCase;-><init>(Lcom/helger/jcodemodel/IJExpression;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aDefaultCase:Lcom/helger/jcodemodel/JCase;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aDefaultCase:Lcom/helger/jcodemodel/JCase;

    return-object v0
.end method

.method public cases()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/JCase;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v0}, Lcom/helger/jcodemodel/JOp;->hasTopOp(Lcom/helger/jcodemodel/IJExpression;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "switch "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JSwitch;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCase;

    .line 122
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 119
    :cond_0
    const-string v0, "switch ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JSwitch;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aDefaultCase:Lcom/helger/jcodemodel/JCase;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aDefaultCase:Lcom/helger/jcodemodel/JCase;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 125
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 126
    return-void
.end method

.method public test()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helger/jcodemodel/JSwitch;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method
