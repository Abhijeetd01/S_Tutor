.class public final Lcom/helger/jcodemodel/JCodeModel;
.super Ljava/lang/Object;
.source "JCodeModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;
    }
.end annotation


# static fields
.field public static final boxToPrimitive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final primitiveToBox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final BOOLEAN:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final BYTE:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final CHAR:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final DOUBLE:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final FLOAT:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final INT:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final LONG:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final NULL:Lcom/helger/jcodemodel/JNullType;

.field public final SHORT:Lcom/helger/jcodemodel/JPrimitiveType;

.field public final VOID:Lcom/helger/jcodemodel/JPrimitiveType;

.field protected final isCaseSensitiveFileSystem:Z

.field private final m_aPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aRefClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/helger/jcodemodel/JReferencedClass;",
            ">;"
        }
    .end annotation
.end field

.field private m_aWildcard:Lcom/helger/jcodemodel/AbstractJClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-class v0, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-class v0, Ljava/lang/Byte;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v0, Ljava/lang/Character;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-class v0, Ljava/lang/Double;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-class v0, Ljava/lang/Float;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-class v0, Ljava/lang/Integer;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-class v0, Ljava/lang/Long;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-class v0, Ljava/lang/Short;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-class v0, Ljava/lang/Void;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/helger/jcodemodel/JCodeModel;->boxToPrimitive:Ljava/util/Map;

    .line 131
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/helger/jcodemodel/JCodeModel;->primitiveToBox:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aRefClasses:Ljava/util/Map;

    .line 141
    new-instance v0, Lcom/helger/jcodemodel/JNullType;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JNullType;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->NULL:Lcom/helger/jcodemodel/JNullType;

    .line 143
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->BOOLEAN:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 144
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "byte"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->BYTE:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 145
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "char"

    const-class v2, Ljava/lang/Character;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->CHAR:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 146
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "double"

    const-class v2, Ljava/lang/Double;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->DOUBLE:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 147
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "float"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->FLOAT:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 148
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "int"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->INT:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 149
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "long"

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->LONG:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 150
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "short"

    const-class v2, Ljava/lang/Short;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->SHORT:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 151
    new-instance v0, Lcom/helger/jcodemodel/JPrimitiveType;

    const-string v1, "void"

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/helger/jcodemodel/JPrimitiveType;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->VOID:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 157
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCodeModel;->getFileSystemCaseSensitivity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JCodeModel;->isCaseSensitiveFileSystem:Z

    .line 188
    return-void
.end method


# virtual methods
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
    .line 281
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JCodeModel;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 2
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
    .line 242
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 243
    if-gez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCodeModel;->rootPackage()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p3}, Lcom/helger/jcodemodel/JPackage;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    goto :goto_0
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
    .line 263
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, p1, v0}, Lcom/helger/jcodemodel/JCodeModel;->_class(Ljava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _class(Ljava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
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
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JCodeModel;->_class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _getClass(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 402
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 403
    if-gez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCodeModel;->rootPackage()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JPackage;->_getClass(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JPackage;->_getClass(Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    goto :goto_0
.end method

.method public _package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JPackage;

    .line 201
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/helger/jcodemodel/JPackage;

    invoke-direct {v0, p1, p0}, Lcom/helger/jcodemodel/JPackage;-><init>(Ljava/lang/String;Lcom/helger/jcodemodel/JCodeModel;)V

    .line 204
    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-object v0
.end method

.method public _ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/AbstractJType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 683
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/AbstractJType;->parse(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)Lcom/helger/jcodemodel/JPrimitiveType;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
.end method

.method public anonymousClass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnonymousClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lcom/helger/jcodemodel/JAnonymousClass;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnonymousClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    return-object v0
.end method

.method public anonymousClass(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnonymousClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnonymousClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JCodeModel;->anonymousClass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnonymousClass;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/helger/jcodemodel/AbstractCodeWriter;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0, p1, p1}, Lcom/helger/jcodemodel/JCodeModel;->build(Lcom/helger/jcodemodel/AbstractCodeWriter;Lcom/helger/jcodemodel/AbstractCodeWriter;)V

    .line 519
    return-void
.end method

.method public build(Lcom/helger/jcodemodel/AbstractCodeWriter;Lcom/helger/jcodemodel/AbstractCodeWriter;)V
    .locals 4
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

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/helger/jcodemodel/JPackage;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/JPackage;

    .line 538
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 539
    invoke-virtual {v3, p1, p2}, Lcom/helger/jcodemodel/JPackage;->build(Lcom/helger/jcodemodel/AbstractCodeWriter;Lcom/helger/jcodemodel/AbstractCodeWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractCodeWriter;->close()V

    .line 544
    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractCodeWriter;->close()V

    .line 546
    return-void

    .line 543
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractCodeWriter;->close()V

    .line 544
    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractCodeWriter;->close()V

    throw v0
.end method

.method public build(Ljava/io/File;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v0}, Lcom/helger/jcodemodel/JCodeModel;->build(Ljava/io/File;Ljava/io/PrintStream;)V

    .line 491
    return-void
.end method

.method public build(Ljava/io/File;Ljava/io/File;)V
    .locals 1
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

    .prologue
    .line 505
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, p2, v0}, Lcom/helger/jcodemodel/JCodeModel;->build(Ljava/io/File;Ljava/io/File;Ljava/io/PrintStream;)V

    .line 506
    return-void
.end method

.method public build(Ljava/io/File;Ljava/io/File;Ljava/io/PrintStream;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v2, Lcom/helger/jcodemodel/writer/FileCodeWriter;

    invoke-direct {v2, p2}, Lcom/helger/jcodemodel/writer/FileCodeWriter;-><init>(Ljava/io/File;)V

    .line 471
    new-instance v1, Lcom/helger/jcodemodel/writer/FileCodeWriter;

    invoke-direct {v1, p1}, Lcom/helger/jcodemodel/writer/FileCodeWriter;-><init>(Ljava/io/File;)V

    .line 472
    if-eqz p3, :cond_0

    .line 474
    new-instance v0, Lcom/helger/jcodemodel/writer/ProgressCodeWriter;

    invoke-direct {v0, v1, p3}, Lcom/helger/jcodemodel/writer/ProgressCodeWriter;-><init>(Lcom/helger/jcodemodel/AbstractCodeWriter;Ljava/io/PrintStream;)V

    .line 475
    new-instance v1, Lcom/helger/jcodemodel/writer/ProgressCodeWriter;

    invoke-direct {v1, v2, p3}, Lcom/helger/jcodemodel/writer/ProgressCodeWriter;-><init>(Lcom/helger/jcodemodel/AbstractCodeWriter;Ljava/io/PrintStream;)V

    .line 477
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->build(Lcom/helger/jcodemodel/AbstractCodeWriter;Lcom/helger/jcodemodel/AbstractCodeWriter;)V

    .line 478
    return-void

    :cond_0
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public build(Ljava/io/File;Ljava/io/PrintStream;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0, p1, p1, p2}, Lcom/helger/jcodemodel/JCodeModel;->build(Ljava/io/File;Ljava/io/File;Ljava/io/PrintStream;)V

    .line 450
    return-void
.end method

.method public buildsErrorTypeRefs()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/helger/jcodemodel/JPackage;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/JPackage;

    .line 383
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 385
    invoke-virtual {v4}, Lcom/helger/jcodemodel/JPackage;->buildsErrorTypeRefs()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 388
    :goto_1
    return v0

    .line 383
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 388
    goto :goto_1
.end method

.method public countArtifacts()I
    .locals 5
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 555
    .line 556
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/helger/jcodemodel/JPackage;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/JPackage;

    .line 558
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 559
    invoke-virtual {v4}, Lcom/helger/jcodemodel/JPackage;->countArtifacts()I

    move-result v4

    add-int/2addr v2, v4

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_0
    return v2
.end method

.method public directClass(Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/JDirectClass;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/helger/jcodemodel/JDirectClass;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/helger/jcodemodel/JDirectClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    return-object v0
.end method

.method public directClass(Ljava/lang/String;)Lcom/helger/jcodemodel/JDirectClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-virtual {p0, v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->directClass(Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/JDirectClass;

    move-result-object v0

    return-object v0
.end method

.method public errorClass(Ljava/lang/String;)Lcom/helger/jcodemodel/JErrorClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/helger/jcodemodel/JErrorClass;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JErrorClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getFileSystemCaseSensitivity()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 170
    :try_start_0
    const-string v1, "com.sun.codemodel.FileSystemCaseSensitive"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    const-string v1, "com.helger.jcodemodel.FileSystemCaseSensitive"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 184
    :goto_1
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public packages()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/JPackage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public parseType(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJType;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 755
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JCodeModel;->parseType(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->array()Lcom/helger/jcodemodel/JArrayClass;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 764
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/AbstractJType;->parse(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)Lcom/helger/jcodemodel/JPrimitiveType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 772
    new-instance v0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->parseTypeName()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
.end method

.method public ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/AbstractJClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aRefClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JReferencedClass;

    .line 578
    if-nez v0, :cond_1

    .line 580
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a primitive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 590
    new-instance v0, Lcom/helger/jcodemodel/JArrayClass;

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/helger/jcodemodel/JArrayClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/AbstractJType;)V

    .line 596
    :cond_1
    :goto_0
    return-object v0

    .line 593
    :cond_2
    new-instance v0, Lcom/helger/jcodemodel/JReferencedClass;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JReferencedClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/Class;)V

    .line 594
    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aRefClasses:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public ref(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 707
    :try_start_0
    invoke-static {}, Lcom/helger/jcodemodel/util/JCSecureLoader;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 725
    :goto_0
    return-object v0

    .line 709
    :catch_0
    move-exception v0

    .line 717
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 719
    :catch_1
    move-exception v0

    .line 725
    new-instance v0, Lcom/helger/jcodemodel/JDirectClass;

    const/4 v1, 0x0

    sget-object v2, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/helger/jcodemodel/JDirectClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ref(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
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
            Lcom/helger/jcodemodel/meta/ErrorTypeFound;,
            Lcom/helger/jcodemodel/meta/CodeModelBuildingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 632
    new-instance v0, Lcom/helger/jcodemodel/meta/JCodeModelJavaxLangModelAdapter;

    invoke-direct {v0, p0, p2}, Lcom/helger/jcodemodel/meta/JCodeModelJavaxLangModelAdapter;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljavax/lang/model/util/Elements;)V

    .line 633
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/meta/JCodeModelJavaxLangModelAdapter;->getClass(Ljavax/lang/model/element/TypeElement;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public refWithErrorTypes(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
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
            Lcom/helger/jcodemodel/meta/CodeModelBuildingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 669
    new-instance v0, Lcom/helger/jcodemodel/meta/JCodeModelJavaxLangModelAdapter;

    invoke-direct {v0, p0, p2}, Lcom/helger/jcodemodel/meta/JCodeModelJavaxLangModelAdapter;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljavax/lang/model/util/Elements;)V

    .line 670
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/meta/JCodeModelJavaxLangModelAdapter;->getClassWithErrorTypes(Ljavax/lang/model/element/TypeElement;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public final rootPackage()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 212
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public wildcard()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aWildcard:Lcom/helger/jcodemodel/AbstractJClass;

    if-nez v0, :cond_0

    .line 736
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->wildcard()Lcom/helger/jcodemodel/JTypeWildcard;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aWildcard:Lcom/helger/jcodemodel/AbstractJClass;

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->m_aWildcard:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method
