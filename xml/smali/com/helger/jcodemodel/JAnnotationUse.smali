.class public Lcom/helger/jcodemodel/JAnnotationUse;
.super Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;
.source "JAnnotationUse.java"


# static fields
.field public static final SPECIAL_KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final m_aAnnotationClass:Lcom/helger/jcodemodel/AbstractJClass;

.field private m_aMemberValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/AbstractJAnnotationValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;-><init>()V

    .line 80
    const-string v0, "AnnotationClass"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    iput-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aAnnotationClass:Lcom/helger/jcodemodel/AbstractJClass;

    .line 81
    return-void
.end method

.method private _addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 131
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 132
    const-string v0, "AnnotationValue"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object p0
.end method

.method private _isOptimizable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    const-string v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public annotationParam(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 524
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p2}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 525
    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    .line 526
    return-object v0
.end method

.method public annotationParam(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;
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
            "Ljava/lang/String;",
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
    .line 506
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JAnnotationUse;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->annotationParam(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter

    .prologue
    .line 542
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aAnnotationClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 543
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 546
    invoke-direct {p0}, Lcom/helger/jcodemodel/JAnnotationUse;->_isOptimizable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 562
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 564
    :cond_1
    return-void

    .line 553
    :cond_2
    const/4 v0, 0x1

    .line 554
    iget-object v1, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 556
    if-nez v1, :cond_3

    .line 557
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 558
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 559
    const/4 v0, 0x0

    move v1, v0

    .line 560
    goto :goto_0
.end method

.method public getAnnotationClass()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aAnnotationClass:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public getAnnotationMembers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/AbstractJAnnotationValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getConstantParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->getParam(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConstantParamValue(Ljava/lang/String;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->getConstantParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JAnnotationStringValue;->value()Lcom/helger/jcodemodel/IJExpression;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParam(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    goto :goto_0
.end method

.method public hasAnnotationMembers()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aAnnotationClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;B)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 179
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(B)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;C)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 202
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(C)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;D)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 225
    invoke-static {p2, p3}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(D)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;F)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 248
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(F)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;I)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 317
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(I)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;J)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 271
    invoke-static {p2, p3}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(J)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 441
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 465
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 386
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;
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
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationUse;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0, p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Enum;)Lcom/helger/jcodemodel/JAnnotationUse;
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
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationUse;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Ljava/lang/Enum;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 340
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;S)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 294
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(S)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Z)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 156
    invoke-static {p2}, Lcom/helger/jcodemodel/JAnnotationUse;->wrap(Z)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    move-result-object v0

    return-object v0
.end method

.method public paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationArrayMember;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JAnnotationUse;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JAnnotationUse;->_addValue(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJAnnotationValue;)Lcom/helger/jcodemodel/JAnnotationUse;

    .line 488
    return-object v0
.end method

.method public varargs paramArray(Ljava/lang/String;[B)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 185
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([B)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 186
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[C)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 208
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([C)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 209
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[D)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 231
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([D)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 232
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[F)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 254
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([F)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 255
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[I)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 323
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([I)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 324
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[J)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 277
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([J)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 278
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 447
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 448
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 471
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 472
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 392
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 393
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;
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
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationUse;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 424
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Ljava/lang/Enum;)Lcom/helger/jcodemodel/JAnnotationUse;
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
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationUse;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Ljava/lang/Enum;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 370
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 346
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 347
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[S)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 300
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([S)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 301
    return-object p0
.end method

.method public varargs paramArray(Ljava/lang/String;[Z)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 1
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
    .line 162
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;->paramArray(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->params([Z)Lcom/helger/jcodemodel/JAnnotationArrayMember;

    .line 163
    return-object p0
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationUse;->m_aMemberValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
