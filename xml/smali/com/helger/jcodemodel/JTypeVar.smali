.class public Lcom/helger/jcodemodel/JTypeVar;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JTypeVar.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;


# instance fields
.field private final m_aBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation
.end field

.field private final m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V
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
    .line 65
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    .line 66
    const-string v0, "Name"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_sName:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JTypeVar;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    goto :goto_0
.end method

.method public _implements()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public bound(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JTypeVar;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 100
    const-string v0, "Bound"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-object p0
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JTypeVar;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 163
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "extends"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 166
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JTypeVar;->m_aBounds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 168
    const-string v2, "& "

    invoke-virtual {p1, v2}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public fullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 177
    return-void
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/helger/jcodemodel/JTypeVar;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
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
    .line 151
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 152
    aget-object v1, p1, v0

    if-ne v1, p0, :cond_0

    .line 153
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 154
    :goto_1
    return-object v0

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 154
    goto :goto_1
.end method
