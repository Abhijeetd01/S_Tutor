.class public Lcom/helger/jcodemodel/JEnumConstantRef;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JEnumConstantRef.java"


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _type:Lcom/helger/jcodemodel/AbstractJClass;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)V
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
    .line 67
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    .line 73
    iput-object p2, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JEnumConstantRef;

    .line 115
    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v3}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

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
    .line 104
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 105
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstantRef;->_type:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method
