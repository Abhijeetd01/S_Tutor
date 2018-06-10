.class public Lcom/helger/jcodemodel/JCast;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JCast.java"


# instance fields
.field private final _object:Lcom/helger/jcodemodel/IJExpression;

.field private final _type:Lcom/helger/jcodemodel/AbstractJType;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
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
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/helger/jcodemodel/JCast;->_type:Lcom/helger/jcodemodel/AbstractJType;

    .line 74
    iput-object p2, p0, Lcom/helger/jcodemodel/JCast;->_object:Lcom/helger/jcodemodel/IJExpression;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JCast;

    .line 102
    iget-object v2, p0, Lcom/helger/jcodemodel/JCast;->_type:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/helger/jcodemodel/JCast;->_type:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v3}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JCast;->_object:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JCast;->_object:Lcom/helger/jcodemodel/IJExpression;

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
    const/16 v2, 0x29

    .line 91
    const-string v0, "(("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JCast;->_type:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JCast;->_object:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 92
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JCast;->_type:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JCast;->_object:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public object()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JCast;->_object:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helger/jcodemodel/JCast;->_type:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method
