.class public Lcom/helger/jcodemodel/TypedAnnotationWriter;
.super Ljava/lang/Object;
.source "TypedAnnotationWriter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Lcom/helger/jcodemodel/IJAnnotationWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        "W::",
        "Lcom/helger/jcodemodel/IJAnnotationWriter",
        "<TA;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;",
        "Lcom/helger/jcodemodel/IJAnnotationWriter",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final _annotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private _arrays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JAnnotationArrayMember;",
            ">;"
        }
    .end annotation
.end field

.field private final _use:Lcom/helger/jcodemodel/JAnnotationUse;

.field private final _writerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TW;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/helger/jcodemodel/JAnnotationUse;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Lcom/helger/jcodemodel/JAnnotationUse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_annotation:Ljava/lang/Class;

    .line 88
    iput-object p2, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_writerType:Ljava/lang/Class;

    .line 89
    iput-object p3, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    .line 90
    return-void
.end method

.method private _addArrayValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_arrays:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_arrays:Ljava/util/Map;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_arrays:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 198
    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_arrays:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    const-class v1, Lcom/helger/jcodemodel/IJAnnotationWriter;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected return type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2
    new-instance v1, Lcom/helger/jcodemodel/TypedAnnotationWriter;

    invoke-virtual {v0, p3}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->annotate(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    invoke-direct {v1, p3, p4, v0}, Lcom/helger/jcodemodel/TypedAnnotationWriter;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/helger/jcodemodel/JAnnotationUse;)V

    invoke-direct {v1}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_createProxy()Lcom/helger/jcodemodel/IJAnnotationWriter;

    move-result-object p1

    .line 239
    :goto_0
    return-object p1

    .line 214
    :cond_3
    instance-of v1, p5, Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v1, :cond_4

    .line 216
    const-class v1, Ljava/lang/Class;

    invoke-direct {p0, v1, p3}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_checkType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 217
    check-cast p5, Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0, p5}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->param(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_checkType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 221
    instance-of v1, p5, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 223
    check-cast p5, Ljava/lang/String;

    invoke-virtual {v0, p5}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->param(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    goto :goto_0

    .line 226
    :cond_5
    instance-of v1, p5, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 228
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->param(Z)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    goto :goto_0

    .line 231
    :cond_6
    instance-of v1, p5, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 233
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->param(I)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    goto :goto_0

    .line 236
    :cond_7
    instance-of v1, p5, Ljava/lang/Class;

    if-eqz v1, :cond_8

    .line 238
    check-cast p5, Ljava/lang/Class;

    invoke-virtual {v0, p5}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->param(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    goto :goto_0

    .line 243
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to handle this method call "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _checkType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 252
    if-eq p2, p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lcom/helger/jcodemodel/JCodeModel;->boxToPrimitive:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _createProxy()Lcom/helger/jcodemodel/IJAnnotationWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_writerType:Ljava/lang/Class;

    invoke-static {v0}, Lcom/helger/jcodemodel/util/JCSecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_writerType:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJAnnotationWriter;

    return-object v0
.end method

.method private static _findAnnotationType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 8
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 286
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 288
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 289
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v7, Lcom/helger/jcodemodel/IJAnnotationWriter;

    if-ne v6, v7, :cond_1

    .line 290
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Class;

    .line 300
    :cond_0
    :goto_1
    return-object v0

    .line 292
    :cond_1
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 295
    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_findAnnotationType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 296
    if-nez v0, :cond_0

    .line 284
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 300
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static create(Ljava/lang/Class;Lcom/helger/jcodemodel/IJAnnotatable;)Lcom/helger/jcodemodel/IJAnnotationWriter;
    .locals 3
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
            "<W::",
            "Lcom/helger/jcodemodel/IJAnnotationWriter",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Lcom/helger/jcodemodel/IJAnnotatable;",
            ")TW;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 278
    invoke-static {p0}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_findAnnotationType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/helger/jcodemodel/TypedAnnotationWriter;

    invoke-interface {p1, v0}, Lcom/helger/jcodemodel/IJAnnotatable;->annotate(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcom/helger/jcodemodel/TypedAnnotationWriter;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/helger/jcodemodel/JAnnotationUse;)V

    invoke-direct {v1}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_createProxy()Lcom/helger/jcodemodel/IJAnnotationWriter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_annotation:Ljava/lang/Class;

    return-object v0
.end method

.method public getAnnotationUse()Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/helger/jcodemodel/IJAnnotationWriter;

    if-ne v0, v1, :cond_1

    .line 108
    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 183
    :cond_0
    :goto_0
    return-object p1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 116
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    const/4 v5, 0x0

    .line 118
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    .line 119
    aget-object v5, p3, v3

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_annotation:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_addArrayValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_3
    const-class v3, Ljava/lang/annotation/Annotation;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    new-instance v0, Lcom/helger/jcodemodel/TypedAnnotationWriter;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-virtual {v4, v2, v1}, Lcom/helger/jcodemodel/JAnnotationUse;->annotationParam(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/helger/jcodemodel/TypedAnnotationWriter;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/helger/jcodemodel/JAnnotationUse;)V

    invoke-direct {v0}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_createProxy()Lcom/helger/jcodemodel/IJAnnotationWriter;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_4
    instance-of v3, v5, Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v3, :cond_6

    .line 142
    check-cast v5, Lcom/helger/jcodemodel/AbstractJType;

    .line 143
    const-class v3, Ljava/lang/Class;

    invoke-direct {p0, v3, v1}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_checkType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 147
    invoke-virtual {v5}, Lcom/helger/jcodemodel/AbstractJType;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-virtual {v0, v2, v5}, Lcom/helger/jcodemodel/JAnnotationUse;->param(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationUse;

    goto :goto_0

    .line 155
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_checkType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :cond_7
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/helger/jcodemodel/JAnnotationUse;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationUse;

    goto/16 :goto_0

    .line 165
    :cond_8
    instance-of v0, v5, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/helger/jcodemodel/JAnnotationUse;->param(Ljava/lang/String;Z)Lcom/helger/jcodemodel/JAnnotationUse;

    goto/16 :goto_0

    .line 170
    :cond_9
    instance-of v0, v5, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 172
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/helger/jcodemodel/JAnnotationUse;->param(Ljava/lang/String;I)Lcom/helger/jcodemodel/JAnnotationUse;

    goto/16 :goto_0

    .line 175
    :cond_a
    instance-of v0, v5, Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 177
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Lcom/helger/jcodemodel/JAnnotationUse;->param(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;

    goto/16 :goto_0

    .line 180
    :cond_b
    instance-of v0, v5, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    .line 182
    iget-object v0, p0, Lcom/helger/jcodemodel/TypedAnnotationWriter;->_use:Lcom/helger/jcodemodel/JAnnotationUse;

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v0, v2, v5}, Lcom/helger/jcodemodel/JAnnotationUse;->param(Ljava/lang/String;Ljava/lang/Enum;)Lcom/helger/jcodemodel/JAnnotationUse;

    goto/16 :goto_0

    .line 186
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to handle this method call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
