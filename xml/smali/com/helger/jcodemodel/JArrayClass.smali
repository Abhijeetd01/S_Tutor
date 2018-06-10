.class public Lcom/helger/jcodemodel/JArrayClass;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JArrayClass.java"


# instance fields
.field private final m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/AbstractJType;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 64
    const-string v0, "ComponentType"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJType;

    iput-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    .line 65
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JArrayClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

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

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JArrayClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JCodeModel;->rootPackage()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public binaryName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJType;->binaryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public elementType()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 144
    if-ne p1, p0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_2
    check-cast p1, Lcom/helger/jcodemodel/JArrayClass;

    .line 150
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    iget-object v1, p1, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 92
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 3
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
    .line 164
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClass;->substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    .line 168
    iget-object v0, p0, Lcom/helger/jcodemodel/JArrayClass;->m_aComponentType:Lcom/helger/jcodemodel/AbstractJType;

    if-eq v1, v0, :cond_0

    .line 171
    new-instance v0, Lcom/helger/jcodemodel/JArrayClass;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JArrayClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/helger/jcodemodel/JArrayClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/AbstractJType;)V

    move-object p0, v0

    goto :goto_0
.end method
