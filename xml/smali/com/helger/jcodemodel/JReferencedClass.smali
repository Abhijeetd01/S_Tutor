.class Lcom/helger/jcodemodel/JReferencedClass;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JReferencedClass.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final m_aClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/helger/jcodemodel/JReferencedClass;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/helger/jcodemodel/JReferencedClass;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/Class;)V
    .locals 1
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
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 29
    iput-object p2, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    .line 30
    sget-boolean v0, Lcom/helger/jcodemodel/JReferencedClass;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
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

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/helger/jcodemodel/JReferencedClass$1;

    invoke-direct {v1, p0, v0}, Lcom/helger/jcodemodel/JReferencedClass$1;-><init>(Lcom/helger/jcodemodel/JReferencedClass;[Ljava/lang/Class;)V

    return-object v1
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->fullName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 73
    if-gez v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    goto :goto_0
.end method

.method public binaryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public fullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/helger/jcodemodel/util/JCNameUtilities;->getFullName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitiveType()Lcom/helger/jcodemodel/JPrimitiveType;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/helger/jcodemodel/JCodeModel;->boxToPrimitive:Ljava/util/Map;

    iget-object v1, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/helger/jcodemodel/AbstractJType;->parse(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)Lcom/helger/jcodemodel/JPrimitiveType;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outer()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass;->m_aClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
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

    .prologue
    .line 156
    return-object p0
.end method

.method public typeParams()[Lcom/helger/jcodemodel/JTypeVar;
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/helger/jcodemodel/AbstractJClass;->typeParams()[Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    return-object v0
.end method
