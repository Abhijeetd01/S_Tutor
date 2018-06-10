.class public Lcom/helger/jcodemodel/JPackage;
.super Ljava/lang/Object;
.source "JPackage.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;
.implements Lcom/helger/jcodemodel/IJGenerable;
.implements Lcom/helger/jcodemodel/IJClassContainer;
.implements Lcom/helger/jcodemodel/IJAnnotatable;
.implements Ljava/lang/Comparable;
.implements Lcom/helger/jcodemodel/IJDocCommentable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helger/jcodemodel/IJDeclaration;",
        "Lcom/helger/jcodemodel/IJGenerable;",
        "Lcom/helger/jcodemodel/IJClassContainer",
        "<",
        "Lcom/helger/jcodemodel/JDefinedClass;",
        ">;",
        "Lcom/helger/jcodemodel/IJAnnotatable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/helger/jcodemodel/JPackage;",
        ">;",
        "Lcom/helger/jcodemodel/IJDocCommentable;"
    }
.end annotation


# instance fields
.field private m_aAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JAnnotationUse;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JDefinedClass;",
            ">;"
        }
    .end annotation
.end field

.field private m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

.field private final m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

.field private final m_aResources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/helger/jcodemodel/AbstractJResourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aUpperCaseClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JDefinedClass;",
            ">;"
        }
    .end annotation
.end field

.field private final m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/helger/jcodemodel/JCodeModel;)V
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
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aResources:Ljava/util/Set;

    .line 118
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name . is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const-string v0, "CodeModel"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iput-object p2, p0, Lcom/helger/jcodemodel/JPackage;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 124
    iput-object p1, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    iget-boolean v0, v0, Lcom/helger/jcodemodel/JCodeModel;->isCaseSensitiveFileSystem:Z

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private _createJavaSourceFileWriter(Lcom/helger/jcodemodel/AbstractCodeWriter;Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 653
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/helger/jcodemodel/AbstractCodeWriter;->openSource(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 654
    new-instance v1, Lcom/helger/jcodemodel/JFormatter;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lcom/helger/jcodemodel/JFormatter;-><init>(Ljava/io/PrintWriter;)V

    return-object v1
.end method


# virtual methods
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
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/JPackage;->_annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JPackage;->_annotationTypeDeclaration(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->ANNOTATION_TYPE_DECL:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _annotationTypeDeclaration(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JPackage;->_annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JPackage;->_class(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _class(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Lcom/helger/jcodemodel/JClassAlreadyExistsException;

    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-direct {v1, v0}, Lcom/helger/jcodemodel/JClassAlreadyExistsException;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    throw v1

    .line 195
    :cond_0
    new-instance v1, Lcom/helger/jcodemodel/JDefinedClass;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/helger/jcodemodel/JDefinedClass;-><init>(Lcom/helger/jcodemodel/IJClassContainer;ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)V

    .line 197
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 201
    if-eqz v0, :cond_1

    .line 202
    new-instance v1, Lcom/helger/jcodemodel/JClassAlreadyExistsException;

    invoke-direct {v1, v0}, Lcom/helger/jcodemodel/JClassAlreadyExistsException;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    throw v1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-object v1
.end method

.method public _class(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/JPackage;->_enum(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JPackage;->_enum(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _enum(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->ENUM:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _enum(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JPackage;->_enum(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _getClass(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/JPackage;->_interface(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

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
    .line 70
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JPackage;->_interface(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _interface(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->INTERFACE:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _interface(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JPackage;->_interface(ILjava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public addResourceFile(Lcom/helger/jcodemodel/AbstractJResourceFile;)Lcom/helger/jcodemodel/AbstractJResourceFile;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 341
    const-string v0, "ResourceFile"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aResources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    return-object p1
.end method

.method public annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the root package cannot be annotated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_1

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    .line 510
    :cond_1
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 511
    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    return-object v0
.end method

.method public annotate(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/helger/jcodemodel/JAnnotationUse;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JPackage;->annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public annotate2(Ljava/lang/Class;)Lcom/helger/jcodemodel/IJAnnotationWriter;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Lcom/helger/jcodemodel/IJAnnotationWriter",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TW;>;)TW;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 524
    invoke-static {p1, p0}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->create(Ljava/lang/Class;Lcom/helger/jcodemodel/IJAnnotatable;)Lcom/helger/jcodemodel/IJAnnotationWriter;

    move-result-object v0

    return-object v0
.end method

.method public annotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/helger/jcodemodel/JAnnotationUse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method build(Lcom/helger/jcodemodel/AbstractCodeWriter;Lcom/helger/jcodemodel/AbstractCodeWriter;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 562
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/helger/jcodemodel/JPackage;->_createJavaSourceFileWriter(Lcom/helger/jcodemodel/AbstractCodeWriter;Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v2

    .line 569
    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JFormatter;->write(Lcom/helger/jcodemodel/JDefinedClass;)V

    .line 570
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JFormatter;->close()V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_5

    .line 576
    :cond_2
    const-string v0, "package-info"

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JPackage;->_createJavaSourceFileWriter(Lcom/helger/jcodemodel/AbstractCodeWriter;Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    .line 578
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationUse;

    .line 585
    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 587
    :cond_4
    invoke-virtual {v1, p0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    .line 589
    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->close()V

    .line 593
    :cond_5
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aResources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJResourceFile;

    .line 595
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJResourceFile;->isResource()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    .line 596
    :goto_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJResourceFile;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Lcom/helger/jcodemodel/AbstractCodeWriter;->openBinary(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 599
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/helger/jcodemodel/AbstractJResourceFile;->build(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_6
    move-object v1, p1

    .line 595
    goto :goto_3

    .line 603
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 606
    :cond_7
    return-void
.end method

.method buildsErrorTypeRefs()Z
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 613
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    invoke-static {v0}, Lcom/helger/jcodemodel/JFormatter;->containsErrorTypes(Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public classes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/helger/jcodemodel/JDefinedClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/helger/jcodemodel/JPackage;)I
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    iget-object v1, p1, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    check-cast p1, Lcom/helger/jcodemodel/JPackage;

    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JPackage;->compareTo(Lcom/helger/jcodemodel/JPackage;)I

    move-result v0

    return v0
.end method

.method countArtifacts()I
    .locals 3

    .prologue
    .line 627
    const/4 v0, 0x0

    .line 628
    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 630
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 636
    goto :goto_0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_3

    .line 641
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aResources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 646
    return v0
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "package"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 550
    :cond_0
    return-void
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 554
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 555
    return-void
.end method

.method public getPackage()Lcom/helger/jcodemodel/JPackage;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 166
    return-object p0
.end method

.method public hasResourceFile(Ljava/lang/String;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aResources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJResourceFile;

    .line 356
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJResourceFile;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClass()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isDefined(Ljava/lang/String;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 464
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackage()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public final isUnnamed()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public javadoc()Lcom/helger/jcodemodel/JDocComment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JDocComment;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public final owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method public parent()Lcom/helger/jcodemodel/JPackage;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 148
    if-ltz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v2, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    goto :goto_0
.end method

.method public parentContainer()Lcom/helger/jcodemodel/IJClassContainer;
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
    .line 134
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->parent()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public propertyFiles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/AbstractJResourceFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aResources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public ref(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/16 v2, 0x2e

    .line 417
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JClass name contains \'.\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const-string v0, ""

    .line 425
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Lcom/helger/jcodemodel/AbstractJClass;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the specified class is not a member of this package, or it is a referenced class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aClasses:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_aUpperCaseClassMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    return-void
.end method

.method public subPackage(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    goto :goto_0
.end method

.method toPath(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/helger/jcodemodel/JPackage;->m_sName:Ljava/lang/String;

    const/16 v2, 0x2e

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method
