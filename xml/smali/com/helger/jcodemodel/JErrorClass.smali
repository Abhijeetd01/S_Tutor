.class public Lcom/helger/jcodemodel/JErrorClass;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JErrorClass.java"


# instance fields
.field private final m_sMessage:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V
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
    .line 77
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 78
    iput-object p2, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/helger/jcodemodel/JErrorClassUsedException;

    iget-object v1, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JErrorClassUsedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _implements()Ljava/util/Iterator;
    .locals 2
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
    .line 113
    new-instance v0, Lcom/helger/jcodemodel/JErrorClassUsedException;

    iget-object v1, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JErrorClassUsedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/helger/jcodemodel/JErrorClassUsedException;

    iget-object v1, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JErrorClassUsedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/helger/jcodemodel/JErrorClassUsedException;

    iget-object v1, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JErrorClassUsedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/helger/jcodemodel/JErrorClassUsedException;

    iget-object v1, p0, Lcom/helger/jcodemodel/JErrorClass;->m_sMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JErrorClassUsedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 0
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
    .line 144
    return-object p0
.end method
