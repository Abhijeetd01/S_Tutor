.class public abstract Lcom/helger/jcodemodel/AbstractJType;
.super Ljava/lang/Object;
.source "AbstractJType.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;
.implements Lcom/helger/jcodemodel/IJOwned;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)Lcom/helger/jcodemodel/JPrimitiveType;
    .locals 3
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
    .line 71
    const-string v0, "void"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->VOID:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 88
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->BOOLEAN:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, "byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->BYTE:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->SHORT:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->CHAR:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->INT:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 83
    :cond_5
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->FLOAT:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 85
    :cond_6
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->LONG:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 87
    :cond_7
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel;->DOUBLE:Lcom/helger/jcodemodel/JPrimitiveType;

    goto :goto_0

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract array()Lcom/helger/jcodemodel/JArrayClass;
.end method

.method public binaryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract boxify()Lcom/helger/jcodemodel/AbstractJClass;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public elementType()Lcom/helger/jcodemodel/AbstractJType;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public erasure()Lcom/helger/jcodemodel/AbstractJType;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 198
    return-object p0
.end method

.method public abstract fullName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helger/jcodemodel/AbstractJType;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z

    move-result v0

    return v0
.end method

.method protected isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z
    .locals 8
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v5

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v6

    .line 275
    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 279
    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    move-object v1, p1

    .line 280
    check-cast v1, Lcom/helger/jcodemodel/AbstractJClass;

    .line 283
    instance-of v2, v1, Lcom/helger/jcodemodel/JNullType;

    if-eqz v2, :cond_3

    move v5, v6

    .line 284
    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helger/jcodemodel/JPackage;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v2

    if-ne v0, v2, :cond_4

    move v5, v6

    .line 288
    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->elementType()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->elementType()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/helger/jcodemodel/AbstractJType;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z

    move-result v5

    goto :goto_0

    .line 294
    :cond_5
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v2

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 297
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isParameterized()Z

    move-result v2

    if-nez v2, :cond_6

    move v5, v6

    .line 298
    goto :goto_0

    .line 301
    :cond_6
    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->isParameterized()Z

    move-result v2

    if-nez v2, :cond_7

    move v5, p2

    .line 302
    goto :goto_0

    :cond_7
    move v4, v5

    .line 304
    :goto_1
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_e

    .line 306
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helger/jcodemodel/AbstractJClass;

    .line 307
    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helger/jcodemodel/AbstractJClass;

    .line 309
    instance-of v7, v2, Lcom/helger/jcodemodel/JTypeWildcard;

    if-eqz v7, :cond_d

    .line 311
    check-cast v2, Lcom/helger/jcodemodel/JTypeWildcard;

    .line 313
    instance-of v0, v3, Lcom/helger/jcodemodel/JTypeWildcard;

    if-eqz v0, :cond_a

    .line 315
    check-cast v3, Lcom/helger/jcodemodel/JTypeWildcard;

    .line 316
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v0

    invoke-virtual {v3}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v0

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    if-ne v0, v1, :cond_8

    .line 319
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->bound()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v3}, Lcom/helger/jcodemodel/JTypeWildcard;->bound()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/helger/jcodemodel/AbstractJClass;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z

    move-result v5

    goto/16 :goto_0

    .line 320
    :cond_8
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v0

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->SUPER:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    if-ne v0, v1, :cond_9

    .line 321
    invoke-virtual {v3}, Lcom/helger/jcodemodel/JTypeWildcard;->bound()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->bound()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/helger/jcodemodel/AbstractJClass;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z

    move-result v5

    goto/16 :goto_0

    .line 322
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wildcard bound mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_a
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v0

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    if-ne v0, v1, :cond_b

    .line 326
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->bound()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/helger/jcodemodel/AbstractJClass;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z

    move-result v5

    goto/16 :goto_0

    .line 327
    :cond_b
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v0

    sget-object v1, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->SUPER:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    if-ne v0, v1, :cond_c

    .line 328
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->bound()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/helger/jcodemodel/AbstractJClass;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;Z)Z

    move-result v5

    goto/16 :goto_0

    .line 329
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wildcard bound mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/helger/jcodemodel/JTypeWildcard;->boundMode()Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_e
    move v5, v6

    .line 335
    goto/16 :goto_0

    .line 338
    :cond_f
    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->_extends()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJType;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v5, v6

    .line 340
    goto/16 :goto_0

    .line 342
    :cond_10
    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->_implements()Ljava/util/Iterator;

    move-result-object v1

    .line 343
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 346
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJType;->isAssignableFrom(Lcom/helger/jcodemodel/AbstractJType;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v5, v6

    .line 347
    goto/16 :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public final isReference()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract name()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract unboxify()Lcom/helger/jcodemodel/AbstractJType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
