.class public Lcom/helger/jcodemodel/JCatchBlock;
.super Ljava/lang/Object;
.source "JCatchBlock.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;


# instance fields
.field private final _body:Lcom/helger/jcodemodel/JBlock;

.field private final _exception:Lcom/helger/jcodemodel/AbstractJClass;

.field private _var:Lcom/helger/jcodemodel/JVar;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_body:Lcom/helger/jcodemodel/JBlock;

    .line 56
    iput-object p1, p0, Lcom/helger/jcodemodel/JCatchBlock;->_exception:Lcom/helger/jcodemodel/AbstractJClass;

    .line 57
    return-void
.end method


# virtual methods
.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_body:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public exception()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_exception:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JCatchBlock;->_exception:Lcom/helger/jcodemodel/AbstractJClass;

    const-string v3, "ex"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    .line 89
    :cond_0
    const-string v0, "catch ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->var(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JCatchBlock;->_body:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 90
    return-void
.end method

.method public param()Lcom/helger/jcodemodel/JVar;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method

.method public param(Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 4
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JCatchBlock;->_exception:Lcom/helger/jcodemodel/AbstractJClass;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    .line 71
    iget-object v0, p0, Lcom/helger/jcodemodel/JCatchBlock;->_var:Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method
