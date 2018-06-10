.class public Lcom/helger/jcodemodel/JTypeVarClass;
.super Lcom/helger/jcodemodel/JTypeVar;
.source "JTypeVarClass.java"


# instance fields
.field private final m_aClass:Lcom/helger/jcodemodel/AbstractJClass;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JTypeVar;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    .line 62
    return-void
.end method


# virtual methods
.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    instance-of v0, v0, Lcom/helger/jcodemodel/JNarrowedClass;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    check-cast v0, Lcom/helger/jcodemodel/JNarrowedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JNarrowedClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    instance-of v0, v0, Lcom/helger/jcodemodel/JDefinedClass;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->typeParamList()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/helger/jcodemodel/JNarrowedClass;

    iget-object v2, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-direct {v1, v2, v0}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JNarrowedClass;->name()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVarClass;->m_aClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
