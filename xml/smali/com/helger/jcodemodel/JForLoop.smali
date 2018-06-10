.class public Lcom/helger/jcodemodel/JForLoop;
.super Ljava/lang/Object;
.source "JForLoop.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private _body:Lcom/helger/jcodemodel/JBlock;

.field private final m_aInitExprs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aUpdateExprs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/IJExpression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->m_aInitExprs:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->m_aUpdateExprs:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->_body:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->_body:Lcom/helger/jcodemodel/JBlock;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->_body:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public init(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;
    .locals 2
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
    .line 69
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    invoke-static {p1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    .line 70
    iget-object v1, p0, Lcom/helger/jcodemodel/JForLoop;->m_aInitExprs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method

.method public init(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;
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
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/helger/jcodemodel/JForLoop;->init(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/helger/jcodemodel/JVar;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 84
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->assign(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/helger/jcodemodel/JForLoop;->m_aInitExprs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public inits()Ljava/util/List;
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
    .line 94
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->m_aInitExprs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/16 v3, 0x3b

    .line 132
    const-string v0, "for ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 133
    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lcom/helger/jcodemodel/JForLoop;->m_aInitExprs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 136
    if-nez v1, :cond_0

    .line 137
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 138
    :cond_0
    instance-of v1, v0, Lcom/helger/jcodemodel/JVar;

    if-eqz v1, :cond_1

    .line 139
    check-cast v0, Lcom/helger/jcodemodel/JVar;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->var(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFormatter;

    .line 142
    :goto_1
    const/4 v0, 0x0

    move v1, v0

    .line 143
    goto :goto_0

    .line 141
    :cond_1
    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JForLoop;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JForLoop;->m_aUpdateExprs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 145
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->_body:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->_body:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 149
    :goto_2
    return-void

    .line 148
    :cond_3
    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_2
.end method

.method public test()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public test(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/helger/jcodemodel/JForLoop;->m_aTestExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 100
    return-void
.end method

.method public update(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Update expression"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->m_aUpdateExprs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public updates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/IJExpression;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/helger/jcodemodel/JForLoop;->m_aUpdateExprs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
