.class public Lcom/helger/jcodemodel/JAssignment;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JAssignment.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJExpressionStatement;


# instance fields
.field private final _lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

.field private final _op:Ljava/lang/String;

.field private final _rhs:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 67
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V
    .locals 0
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
    .line 83
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/helger/jcodemodel/JAssignment;->_lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

    .line 85
    iput-object p2, p0, Lcom/helger/jcodemodel/JAssignment;->_rhs:Lcom/helger/jcodemodel/IJExpression;

    .line 86
    iput-object p3, p0, Lcom/helger/jcodemodel/JAssignment;->_op:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JAssignment;

    .line 128
    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

    iget-object v3, p1, Lcom/helger/jcodemodel/JAssignment;->_lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_rhs:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JAssignment;->_rhs:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_op:Ljava/lang/String;

    iget-object v3, p1, Lcom/helger/jcodemodel/JAssignment;->_op:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/helger/jcodemodel/JAssignment;->_lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JAssignment;->_rhs:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 113
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_rhs:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/helger/jcodemodel/JAssignment;->_op:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lhs()Lcom/helger/jcodemodel/IJAssignmentTarget;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/helger/jcodemodel/JAssignment;->_lhs:Lcom/helger/jcodemodel/IJAssignmentTarget;

    return-object v0
.end method

.method public op()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helger/jcodemodel/JAssignment;->_op:Ljava/lang/String;

    return-object v0
.end method

.method public rhs()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helger/jcodemodel/JAssignment;->_rhs:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 117
    invoke-virtual {p1, p0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 118
    return-void
.end method
