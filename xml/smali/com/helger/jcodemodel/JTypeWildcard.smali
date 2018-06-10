.class public Lcom/helger/jcodemodel/JTypeWildcard;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JTypeWildcard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;
    }
.end annotation


# instance fields
.field private final m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

.field private final m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;)V
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
    .line 89
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 90
    iput-object p1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    .line 91
    iput-object p2, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    .line 92
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JTypeWildcard;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
.end method

.method public _implements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->_implements()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public bound()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->declarationTokens()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->_extends()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    const-string v0, "?"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->declarationTokens()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_eBoundMode:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->declarationTokens()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/helger/jcodemodel/JTypeVar;",
            "Ljava/util/List",
            "<+",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;)",
            "Lcom/helger/jcodemodel/AbstractJClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClass;->substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/helger/jcodemodel/JTypeWildcard;->m_aBoundClass:Lcom/helger/jcodemodel/AbstractJClass;

    if-ne v0, v1, :cond_0

    .line 176
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/helger/jcodemodel/JTypeWildcard;

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JTypeWildcard;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;)V

    goto :goto_0
.end method
