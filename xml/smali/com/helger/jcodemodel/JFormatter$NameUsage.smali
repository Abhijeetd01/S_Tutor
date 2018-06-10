.class final Lcom/helger/jcodemodel/JFormatter$NameUsage;
.super Ljava/lang/Object;
.source "JFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/JFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameUsage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final m_aReferencedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation
.end field

.field private m_bIsVariableName:Z

.field private final m_sName:Ljava/lang/String;

.field final synthetic this$0:Lcom/helger/jcodemodel/JFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/helger/jcodemodel/JFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->this$0:Lcom/helger/jcodemodel/JFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_sName:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public addReferencedType(Lcom/helger/jcodemodel/AbstractJClass;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsReferencedType(Lcom/helger/jcodemodel/AbstractJClass;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getReferencedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    return-object v0
.end method

.method public getSingleReferencedType()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 154
    sget-boolean v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public isAmbiguousIn(Lcom/helger/jcodemodel/JDefinedClass;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_bIsVariableName:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 110
    instance-of v1, v0, Lcom/helger/jcodemodel/JAnonymousClass;

    if-eqz v1, :cond_5

    .line 112
    check-cast v0, Lcom/helger/jcodemodel/JAnonymousClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JAnonymousClass;->base()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    move-object v1, v0

    .line 117
    :goto_1
    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    iget-object v4, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->this$0:Lcom/helger/jcodemodel/JFormatter;

    #getter for: Lcom/helger/jcodemodel/JFormatter;->m_aPckJavaLang:Lcom/helger/jcodemodel/JPackage;
    invoke-static {v4}, Lcom/helger/jcodemodel/JFormatter;->access$000(Lcom/helger/jcodemodel/JFormatter;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v4

    if-ne v0, v4, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JDefinedClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->classes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 126
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 129
    goto :goto_0

    :cond_4
    move v0, v3

    .line 134
    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public isTypeName()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVariableName()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_bIsVariableName:Z

    return v0
.end method

.method public setVariableName()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 169
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_bIsVariableName:Z

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_bIsVariableName:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Usages["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, "; isVarName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_bIsVariableName:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "; refedClasses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JFormatter$NameUsage;->m_aReferencedClasses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
