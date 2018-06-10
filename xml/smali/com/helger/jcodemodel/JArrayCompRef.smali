.class public Lcom/helger/jcodemodel/JArrayCompRef;
.super Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;
.source "JArrayCompRef.java"


# instance fields
.field private final _array:Lcom/helger/jcodemodel/IJExpression;

.field private final _index:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)V
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
    .line 72
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;-><init>()V

    .line 73
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_array:Lcom/helger/jcodemodel/IJExpression;

    .line 76
    iput-object p2, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_index:Lcom/helger/jcodemodel/IJExpression;

    .line 77
    return-void
.end method


# virtual methods
.method public array()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_array:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JArrayCompRef;

    .line 104
    iget-object v2, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_array:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JArrayCompRef;->_array:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_index:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JArrayCompRef;->_index:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_array:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_index:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 94
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_array:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_index:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public index()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayCompRef;->_index:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method
