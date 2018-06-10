.class public Lcom/helger/jcodemodel/JBlock;
.super Ljava/lang/Object;
.source "JBlock.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;
.implements Lcom/helger/jcodemodel/IJStatement;


# static fields
.field public static final DEFAULT_BRACES_REQUIRED:Z = true

.field public static final DEFAULT_INDENT_REQUIRED:Z = true

.field public static final DEFAULT_VIRTUAL_BLOCK:Z


# instance fields
.field protected final m_aContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_bBracesRequired:Z

.field private m_bIndentRequired:Z

.field private m_bVirtualBlock:Z

.field private m_nPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bVirtualBlock:Z

    .line 76
    iput-boolean v1, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    .line 77
    iput-boolean v1, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    .line 85
    return-void
.end method

.method protected constructor <init>(ZZ)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bVirtualBlock:Z

    .line 76
    iput-boolean v1, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    .line 77
    iput-boolean v1, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    .line 90
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JBlock;->bracesRequired(Z)Lcom/helger/jcodemodel/JBlock;

    .line 91
    invoke-virtual {p0, p2}, Lcom/helger/jcodemodel/JBlock;->indentRequired(Z)Lcom/helger/jcodemodel/JBlock;

    .line 92
    return-void
.end method


# virtual methods
.method public _break()Lcom/helger/jcodemodel/JBreak;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 647
    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/JLabel;

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_break(Lcom/helger/jcodemodel/JLabel;)Lcom/helger/jcodemodel/JBreak;

    move-result-object v0

    return-object v0
.end method

.method public _break(Lcom/helger/jcodemodel/JLabel;)Lcom/helger/jcodemodel/JBreak;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 660
    new-instance v0, Lcom/helger/jcodemodel/JBreak;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JBreak;-><init>(Lcom/helger/jcodemodel/JLabel;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JBreak;

    return-object v0
.end method

.method public _continue()Lcom/helger/jcodemodel/JContinue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_continue(Lcom/helger/jcodemodel/JLabel;)Lcom/helger/jcodemodel/JContinue;

    move-result-object v0

    return-object v0
.end method

.method public _continue(Lcom/helger/jcodemodel/JLabel;)Lcom/helger/jcodemodel/JContinue;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 700
    new-instance v0, Lcom/helger/jcodemodel/JContinue;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JContinue;-><init>(Lcom/helger/jcodemodel/JLabel;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JContinue;

    return-object v0
.end method

.method public _do(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JDoLoop;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 588
    new-instance v0, Lcom/helger/jcodemodel/JDoLoop;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JDoLoop;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDoLoop;

    return-object v0
.end method

.method public _for()Lcom/helger/jcodemodel/JForLoop;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/helger/jcodemodel/JForLoop;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JForLoop;-><init>()V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JForLoop;

    return-object v0
.end method

.method public _if(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JConditional;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 497
    new-instance v0, Lcom/helger/jcodemodel/JConditional;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JConditional;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JConditional;

    return-object v0
.end method

.method public _if(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JConditional;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/helger/jcodemodel/JConditional;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JConditional;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    .line 514
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JConditional;->_then()Lcom/helger/jcodemodel/JBlock;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/helger/jcodemodel/JBlock;->add(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JBlock;

    .line 515
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JConditional;

    return-object v0
.end method

.method public _if(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJStatement;Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JConditional;
    .locals 2
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
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lcom/helger/jcodemodel/JConditional;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JConditional;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    .line 536
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JConditional;->_then()Lcom/helger/jcodemodel/JBlock;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/helger/jcodemodel/JBlock;->add(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JBlock;

    .line 537
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JConditional;->_else()Lcom/helger/jcodemodel/JBlock;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/helger/jcodemodel/JBlock;->add(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JBlock;

    .line 538
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JConditional;

    return-object v0
.end method

.method protected final _insert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statementOrDeclaration"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    iget v1, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    iget v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    .line 159
    return-object p1
.end method

.method public _new(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 463
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJType;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public _new(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJType;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public _return()Lcom/helger/jcodemodel/JReturn;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 610
    new-instance v0, Lcom/helger/jcodemodel/JReturn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JReturn;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JReturn;

    return-object v0
.end method

.method public _return(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JReturn;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 623
    new-instance v0, Lcom/helger/jcodemodel/JReturn;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JReturn;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JReturn;

    return-object v0
.end method

.method public _switch(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JSwitch;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 575
    new-instance v0, Lcom/helger/jcodemodel/JSwitch;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JSwitch;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JSwitch;

    return-object v0
.end method

.method public _throw(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JThrow;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 636
    new-instance v0, Lcom/helger/jcodemodel/JThrow;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JThrow;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JThrow;

    return-object v0
.end method

.method public _try()Lcom/helger/jcodemodel/JTryBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 599
    new-instance v0, Lcom/helger/jcodemodel/JTryBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JTryBlock;-><init>()V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTryBlock;

    return-object v0
.end method

.method public _while(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JWhileLoop;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 562
    new-instance v0, Lcom/helger/jcodemodel/JWhileLoop;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JWhileLoop;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JWhileLoop;

    return-object v0
.end method

.method public add(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JBlock;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    return-object p0
.end method

.method public assign(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 329
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->assign(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-object p0
.end method

.method public assignDivide(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 357
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->assignDivide(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-object p0
.end method

.method public assignMinus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 343
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->assignMinus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-object p0
.end method

.method public assignPlus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 336
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->assignPlus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-object p0
.end method

.method public assignTimes(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 350
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->assignTimes(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object p0
.end method

.method public block()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 714
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public block(ZZ)Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 759
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JBlock;->bracesRequired(Z)Lcom/helger/jcodemodel/JBlock;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JBlock;->indentRequired(Z)Lcom/helger/jcodemodel/JBlock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public blockSimple()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 728
    invoke-virtual {p0, v0, v0}, Lcom/helger/jcodemodel/JBlock;->block(ZZ)Lcom/helger/jcodemodel/JBlock;

    move-result-object v0

    return-object v0
.end method

.method public blockVirtual()Lcom/helger/jcodemodel/JBlock;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JBlock;->blockSimple()Lcom/helger/jcodemodel/JBlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JBlock;->virtual(Z)Lcom/helger/jcodemodel/JBlock;

    move-result-object v0

    return-object v0
.end method

.method public bracesRequired(Z)Lcom/helger/jcodemodel/JBlock;
    .locals 0
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    .line 126
    return-object p0
.end method

.method public bracesRequired()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    return v0
.end method

.method public decl(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/helger/jcodemodel/JBlock;->decl(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public decl(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;
    .locals 3
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 299
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    invoke-static {p1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iput-boolean v2, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    .line 302
    iput-boolean v2, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    .line 303
    return-object v0
.end method

.method public decl(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/helger/jcodemodel/JBlock;->decl(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public decl(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;
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
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/helger/jcodemodel/JBlock;->decl(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public directStatement(Ljava/lang/String;)Lcom/helger/jcodemodel/IJStatement;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 811
    new-instance v0, Lcom/helger/jcodemodel/JDirectStatement;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JDirectStatement;-><init>(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->add(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JBlock;

    .line 813
    return-object v0
.end method

.method public forEach(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JForEach;
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
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 779
    new-instance v0, Lcom/helger/jcodemodel/JForEach;

    invoke-direct {v0, p1, p2, p3}, Lcom/helger/jcodemodel/JForEach;-><init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JForEach;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bVirtualBlock:Z

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JBlock;->generateBody(Lcom/helger/jcodemodel/JFormatter;)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    if-eqz v0, :cond_2

    .line 827
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 828
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 830
    :cond_2
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    if-eqz v0, :cond_3

    .line 831
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    .line 832
    :cond_3
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JBlock;->generateBody(Lcom/helger/jcodemodel/JFormatter;)V

    .line 833
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    if-eqz v0, :cond_4

    .line 834
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    .line 835
    :cond_4
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    if-eqz v0, :cond_0

    .line 836
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method

.method generateBody(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 842
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 844
    instance-of v2, v0, Lcom/helger/jcodemodel/IJDeclaration;

    if-eqz v2, :cond_0

    .line 845
    check-cast v0, Lcom/helger/jcodemodel/IJDeclaration;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 847
    :cond_0
    instance-of v2, v0, Lcom/helger/jcodemodel/IJStatement;

    if-eqz v2, :cond_1

    .line 848
    check-cast v0, Lcom/helger/jcodemodel/IJStatement;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 852
    :cond_1
    check-cast v0, Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 855
    :cond_2
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public indentRequired(Z)Lcom/helger/jcodemodel/JBlock;
    .locals 0
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    .line 138
    return-object p0
.end method

.method public indentRequired()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    return v0
.end method

.method public insertBefore(Lcom/helger/jcodemodel/JVar;Ljava/lang/Object;)Lcom/helger/jcodemodel/JBlock;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 309
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 311
    iget v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    .line 312
    iput-boolean v2, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    .line 313
    iput-boolean v2, p0, Lcom/helger/jcodemodel/JBlock;->m_bIndentRequired:Z

    .line 314
    return-object p0
.end method

.method public invoke(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public invoke(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public invoke(Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 457
    new-instance v1, Lcom/helger/jcodemodel/JInvocation;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-direct {v1, v0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)V

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public invoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 444
    new-instance v1, Lcom/helger/jcodemodel/JInvocation;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-direct {v1, v0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public invokeThis(Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lcom/helger/jcodemodel/JExpr;->_this()Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JBlock;->invoke(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public invokeThis(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 387
    invoke-static {}, Lcom/helger/jcodemodel/JExpr;->_this()Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JBlock;->invoke(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public label(Ljava/lang/String;)Lcom/helger/jcodemodel/JLabel;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 674
    new-instance v0, Lcom/helger/jcodemodel/JLabel;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JLabel;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-object v0
.end method

.method public pos()I
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    return v0
.end method

.method public pos(I)I
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnegative;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    .line 207
    iget-object v1, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal position provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iput p1, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    .line 210
    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnegative;
        .end annotation
    .end parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/helger/jcodemodel/JBlock;->m_nPos:I

    .line 179
    return-void
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/helger/jcodemodel/JBlock;->m_aContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 859
    invoke-virtual {p1, p0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 860
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bBracesRequired:Z

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 862
    :cond_0
    return-void
.end method

.method public staticInvoke(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JInvocation;

    return-object v0
.end method

.method public synchronizedBlock(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JSynchronizedBlock;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 793
    new-instance v0, Lcom/helger/jcodemodel/JSynchronizedBlock;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JSynchronizedBlock;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JBlock;->_insert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JSynchronizedBlock;

    return-object v0
.end method

.method public virtual(Z)Lcom/helger/jcodemodel/JBlock;
    .locals 0
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/helger/jcodemodel/JBlock;->m_bVirtualBlock:Z

    .line 114
    return-object p0
.end method

.method public virtual()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JBlock;->m_bVirtualBlock:Z

    return v0
.end method
