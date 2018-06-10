.class public abstract Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;
.super Ljava/lang/Object;
.source "AbstractJGenerifiableImpl.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerifiable;
.implements Lcom/helger/jcodemodel/IJDeclaration;
.implements Lcom/helger/jcodemodel/IJOwned;


# instance fields
.field private _typeVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JTypeVar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 68
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTypeVar;

    .line 71
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_0

    .line 72
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 73
    :cond_0
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const v0, 0xffff

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 77
    :cond_2
    return-void
.end method

.method public generify(Ljava/lang/String;)Lcom/helger/jcodemodel/JTypeVar;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/helger/jcodemodel/JTypeVar;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/helger/jcodemodel/JTypeVar;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/util/LinkedHashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A type parameter with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is already present!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generify(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JTypeVar;
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
    .line 101
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->generify(Ljava/lang/String;)Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JTypeVar;->bound(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    return-object v0
.end method

.method public generify(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JTypeVar;
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
            "Lcom/helger/jcodemodel/JTypeVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->generify(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    return-object v0
.end method

.method public typeParamList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JTypeVar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public typeParams()[Lcom/helger/jcodemodel/JTypeVar;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/helger/jcodemodel/AbstractJClass;->EMPTY_ARRAY:[Lcom/helger/jcodemodel/JTypeVar;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->_typeVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/helger/jcodemodel/JTypeVar;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/JTypeVar;

    goto :goto_0
.end method
