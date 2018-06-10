.class public Lcom/helger/jcodemodel/JFieldVar;
.super Lcom/helger/jcodemodel/JVar;
.source "JFieldVar.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDocCommentable;


# instance fields
.field private m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

.field private final m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JDefinedClass;Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
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

    .prologue
    .line 80
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    .line 81
    const-string v0, "OwnerClass"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    iput-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    .line 82
    return-void
.end method


# virtual methods
.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/helger/jcodemodel/JVar;->declare(Lcom/helger/jcodemodel/JFormatter;)V

    .line 135
    return-void
.end method

.method public fieldRef()Lcom/helger/jcodemodel/JFieldRef;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    iget-object v1, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/JVar;)V

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/helger/jcodemodel/JVar;->generate(Lcom/helger/jcodemodel/JFormatter;)V

    .line 142
    return-void
.end method

.method public javadoc()Lcom/helger/jcodemodel/JDocComment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/helger/jcodemodel/JDocComment;

    iget-object v1, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JDocComment;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    return-object v0
.end method

.method public name(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    iget-object v0, v0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in use"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFieldVar;->name()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-super {p0, p1}, Lcom/helger/jcodemodel/JVar;->name(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    iget-object v1, v1, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    iget-object v0, v0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public owner()Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldVar;->m_aOwnerClass:Lcom/helger/jcodemodel/JDefinedClass;

    return-object v0
.end method
