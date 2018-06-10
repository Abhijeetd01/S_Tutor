.class public Lcom/helger/jcodemodel/JVar;
.super Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;
.source "JVar.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;
.implements Lcom/helger/jcodemodel/IJAnnotatable;


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

.field private m_aInitExpr:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aMods:Lcom/helger/jcodemodel/JMods;

.field private m_aType:Lcom/helger/jcodemodel/AbstractJType;

.field private m_sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V
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
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;-><init>()V

    .line 104
    invoke-static {p3}, Lcom/helger/jcodemodel/JJavaName;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal variable name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JVar;->m_aMods:Lcom/helger/jcodemodel/JMods;

    .line 107
    iput-object p2, p0, Lcom/helger/jcodemodel/JVar;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 108
    iput-object p3, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/helger/jcodemodel/JVar;->m_aInitExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 110
    return-void
.end method


# virtual methods
.method public annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    .line 199
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 200
    iget-object v1, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
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
    .line 214
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JVar;->annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

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
    .line 220
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
    .line 226
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationUse;

    .line 240
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aMods:Lcom/helger/jcodemodel/JMods;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JVar;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 242
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aInitExpr:Lcom/helger/jcodemodel/IJExpression;

    if-eqz v0, :cond_1

    .line 243
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JVar;->m_aInitExpr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 244
    :cond_1
    return-void
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 248
    invoke-virtual {p1, p0}, Lcom/helger/jcodemodel/JFormatter;->var(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 249
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 259
    if-ne p1, p0, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_2
    check-cast p1, Lcom/helger/jcodemodel/JVar;

    .line 264
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    iget-object v1, p1, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 254
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JVar;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/helger/jcodemodel/JVar;->m_aInitExpr:Lcom/helger/jcodemodel/IJExpression;

    .line 123
    return-object p0
.end method

.method protected isAnnotated()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aAnnotations:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mods()Lcom/helger/jcodemodel/JMods;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aMods:Lcom/helger/jcodemodel/JMods;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 145
    invoke-static {p1}, Lcom/helger/jcodemodel/JJavaName;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal variable name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JVar;->m_sName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method

.method public type(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 181
    const-string v0, "NewType"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/helger/jcodemodel/JVar;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 183
    iput-object p1, p0, Lcom/helger/jcodemodel/JVar;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 184
    return-object v0
.end method
