.class public Lcom/helger/jcodemodel/JDirectClass;
.super Lcom/helger/jcodemodel/AbstractJClassContainer;
.source "JDirectClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helger/jcodemodel/AbstractJClassContainer",
        "<",
        "Lcom/helger/jcodemodel/JDirectClass;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_sFullName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helger/jcodemodel/JCodeModel;",
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;",
            "Lcom/helger/jcodemodel/EClassType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p4}, Lcom/helger/jcodemodel/JDirectClass;->_getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    .line 83
    iput-object p4, p0, Lcom/helger/jcodemodel/JDirectClass;->m_sFullName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/helger/jcodemodel/JDirectClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private static _getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 71
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 72
    if-gez v0, :cond_0

    .line 74
    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
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
    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 114
    :cond_0
    instance-of v1, v0, Lcom/helger/jcodemodel/JPackage;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Lcom/helger/jcodemodel/JPackage;

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->fullName()Ljava/lang/String;

    move-result-object v0

    .line 119
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 120
    if-ltz v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JCodeModel;->rootPackage()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/helger/jcodemodel/JDirectClass;->createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/JDirectClass;

    move-result-object v0

    return-object v0
.end method

.method protected createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/JDirectClass;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/helger/jcodemodel/JDirectClass;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/helger/jcodemodel/JDirectClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDirectClass;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JDirectClass;->m_sFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDirectClass;->m_sFullName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 150
    return-object p0
.end method
