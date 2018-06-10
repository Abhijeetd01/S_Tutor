.class public abstract Lcom/helger/jcodemodel/AbstractJClassContainer;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "AbstractJClassContainer.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJClassContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C",
        "LASSTYPE:Lcom/helger/jcodemodel/AbstractJClassContainer",
        "<TC",
        "LASSTYPE;",
        ">;>",
        "Lcom/helger/jcodemodel/AbstractJClass;",
        "Lcom/helger/jcodemodel/IJClassContainer",
        "<TC",
        "LASSTYPE;",
        ">;"
    }
.end annotation


# instance fields
.field protected m_aClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TC",
            "LASSTYPE;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;"
        }
    .end annotation
.end field

.field private final m_eClassType:Lcom/helger/jcodemodel/EClassType;

.field private final m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V
    .locals 0
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
        .annotation runtime Ljavax/annotation/Nullable;
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
    .line 104
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 105
    iput-object p2, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;

    .line 106
    iput-object p3, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_eClassType:Lcom/helger/jcodemodel/EClassType;

    .line 107
    iput-object p4, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_sName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private _getClasses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TC",
            "LASSTYPE;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aClasses:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aClasses:Ljava/util/Map;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aClasses:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final _annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->ANNOTATION_TYPE_DECL:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _annotationTypeDeclaration(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _annotationTypeDeclaration(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_annotationTypeDeclaration(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _class(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 3
    .parameter
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
            "(I",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/EClassType;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/helger/jcodemodel/JCodeModel;->isCaseSensitiveFileSystem:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_getClasses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    .line 238
    if-eqz v0, :cond_1

    .line 239
    new-instance v1, Lcom/helger/jcodemodel/JClassAlreadyExistsException;

    invoke-direct {v1, v0}, Lcom/helger/jcodemodel/JClassAlreadyExistsException;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    throw v1

    :cond_0
    move-object v1, p2

    .line 235
    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/helger/jcodemodel/AbstractJClassContainer;->createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    .line 242
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_getClasses()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-object v0
.end method

.method public final _class(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _class(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _class(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _enum(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->ENUM:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _enum(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_enum(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _enum(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_enum(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _enum(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_enum(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _interface(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->INTERFACE:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final _interface(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_interface(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _interface(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_interface(ILjava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic _interface(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_interface(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;

    move-result-object v0

    return-object v0
.end method

.method public final classes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TC",
            "LASSTYPE;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aClasses:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .parameter
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
            "(I",
            "Lcom/helger/jcodemodel/EClassType;",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public fullName()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v2, 0x2e

    .line 168
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getClassType()Lcom/helger/jcodemodel/EClassType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_eClassType:Lcom/helger/jcodemodel/EClassType;

    return-object v0
.end method

.method public final getOuter()Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;

    return-object v0
.end method

.method public final getPackage()Lcom/helger/jcodemodel/JPackage;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->parentContainer()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/helger/jcodemodel/IJClassContainer;->getPackage()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public final isAnnotationTypeDeclaration()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_eClassType:Lcom/helger/jcodemodel/EClassType;

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->ANNOTATION_TYPE_DECL:Lcom/helger/jcodemodel/EClassType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAnonymous()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_sName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClass()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public final isInterface()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_eClassType:Lcom/helger/jcodemodel/EClassType;

    sget-object v1, Lcom/helger/jcodemodel/EClassType;->INTERFACE:Lcom/helger/jcodemodel/EClassType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPackage()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public final outer()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;

    invoke-interface {v0}, Lcom/helger/jcodemodel/IJClassContainer;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final parentContainer()Lcom/helger/jcodemodel/IJClassContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClassContainer;->m_aOuter:Lcom/helger/jcodemodel/IJClassContainer;

    return-object v0
.end method

.method protected final thisAsT()Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 199
    return-object p0
.end method
