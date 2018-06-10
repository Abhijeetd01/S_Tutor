.class public Lcom/helger/jcodemodel/JEnumConstant;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JEnumConstant.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;
.implements Lcom/helger/jcodemodel/IJAnnotatable;
.implements Lcom/helger/jcodemodel/IJDocCommentable;


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

.field private m_aArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/IJExpression;",
            ">;"
        }
    .end annotation
.end field

.field private m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

.field private final m_aType:Lcom/helger/jcodemodel/AbstractJClass;

.field private final m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)V
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
    .line 90
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 91
    const-string v0, "Type"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    .line 92
    const-string v0, "Name"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    .line 93
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
    .line 173
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    .line 175
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 176
    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
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
    .line 189
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JEnumConstant;->annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

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
    .line 195
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
    .line 204
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JEnumConstant;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 120
    const-string v0, "Arg"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object p0
.end method

.method public args()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/IJExpression;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationUse;

    .line 215
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 217
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 218
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 219
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 232
    goto :goto_0

    .line 233
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JEnumConstant;

    .line 234
    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v3}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    iget-object v3, p1, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 224
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasArgs()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aArgs:Ljava/util/List;

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

.method public hashCode()I
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public javadoc()Lcom/helger/jcodemodel/JDocComment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/helger/jcodemodel/JDocComment;

    iget-object v1, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JDocComment;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aJavaDoc:Lcom/helger/jcodemodel/JDocComment;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helger/jcodemodel/JEnumConstant;->m_aType:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method
