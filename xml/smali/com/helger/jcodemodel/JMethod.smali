.class public Lcom/helger/jcodemodel/JMethod;
.super Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;
.source "JMethod.java"

# interfaces
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

.field private m_aBody:Lcom/helger/jcodemodel/JBlock;

.field private m_aDefaultValue:Lcom/helger/jcodemodel/IJExpression;

.field private m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

.field private final m_aMods:Lcom/helger/jcodemodel/JMods;

.field private final m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

.field private final m_aParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JVar;",
            ">;"
        }
    .end annotation
.end field

.field private m_aThrows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation
.end field

.field private m_aType:Lcom/helger/jcodemodel/AbstractJType;

.field private m_aVarParam:Lcom/helger/jcodemodel/JVar;

.field private m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILcom/helger/jcodemodel/JDefinedClass;)V
    .locals 1
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    .line 145
    invoke-static {p1}, Lcom/helger/jcodemodel/JMods;->forMethod(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aMods:Lcom/helger/jcodemodel/JMods;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 147
    invoke-virtual {p2}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_sName:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    .line 149
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/JDefinedClass;ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    .line 129
    invoke-static {p2}, Lcom/helger/jcodemodel/JMods;->forMethod(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aMods:Lcom/helger/jcodemodel/JMods;

    .line 130
    iput-object p3, p0, Lcom/helger/jcodemodel/JMethod;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 131
    iput-object p4, p0, Lcom/helger/jcodemodel/JMethod;->m_sName:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    .line 133
    return-void
.end method


# virtual methods
.method public _throws(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JMethod;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/helger/jcodemodel/util/ClassNameComparator;->getInstance()Lcom/helger/jcodemodel/util/ClassNameComparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public _throws(Ljava/lang/Class;)Lcom/helger/jcodemodel/JMethod;
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
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/helger/jcodemodel/JMethod;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JMethod;->_throws(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JMethod;

    move-result-object v0

    return-object v0
.end method

.method public annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    .line 367
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 368
    iget-object v1, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
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
    .line 382
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JMethod;->annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

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
    .line 388
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
    .line 394
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/16 v3, 0x2c

    .line 536
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationUse;

    .line 541
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aMods:Lcom/helger/jcodemodel/JMods;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 546
    invoke-super {p0, p1}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->declare(Lcom/helger/jcodemodel/JFormatter;)V

    .line 548
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    .line 553
    const/4 v0, 0x1

    .line 554
    iget-object v1, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JVar;

    .line 556
    if-nez v1, :cond_3

    .line 557
    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 558
    :cond_3
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->isAnnotated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 559
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 560
    :cond_4
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->var(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFormatter;

    .line 561
    const/4 v0, 0x0

    move v1, v0

    .line 562
    goto :goto_1

    .line 563
    :cond_5
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->hasVarArgs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 565
    if-nez v1, :cond_6

    .line 566
    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->annotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationUse;

    .line 568
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_2

    .line 569
    :cond_7
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->mods()Lcom/helger/jcodemodel/JMods;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JVar;->type()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJType;->elementType()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 570
    const-string v0, "... "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 571
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 574
    :cond_8
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 575
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 577
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, "throws"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    .line 580
    :cond_9
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aDefaultValue:Lcom/helger/jcodemodel/IJExpression;

    if-eqz v0, :cond_a

    .line 582
    const-string v0, "default "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 583
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aDefaultValue:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 585
    :cond_a
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_b

    .line 587
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 602
    :goto_3
    return-void

    .line 590
    :cond_b
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->isInterface()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->isAnnotationTypeDeclaration()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aMods:Lcom/helger/jcodemodel/JMods;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JMods;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aMods:Lcom/helger/jcodemodel/JMods;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JMods;->isNative()Z

    move-result v0

    if-nez v0, :cond_c

    .line 596
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_3

    .line 600
    :cond_c
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_3
.end method

.method public declareDefaultValue(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/helger/jcodemodel/JMethod;->m_aDefaultValue:Lcom/helger/jcodemodel/IJExpression;

    .line 516
    return-void
.end method

.method public getThrows()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aThrows:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSignature([Lcom/helger/jcodemodel/AbstractJType;)Z
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->listParams()[Lcom/helger/jcodemodel/JVar;

    move-result-object v2

    .line 484
    array-length v0, v2

    array-length v3, p1

    if-eq v0, v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 487
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 488
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/helger/jcodemodel/JVar;->type()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasVarArgs()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructor()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public javadoc()Lcom/helger/jcodemodel/JDocComment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JDocComment;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    return-object v0
.end method

.method public listParamTypes()[Lcom/helger/jcodemodel/AbstractJType;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/helger/jcodemodel/AbstractJType;

    .line 445
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->type()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    aput-object v0, v2, v1

    .line 445
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 447
    :cond_0
    return-object v2
.end method

.method public listParams()[Lcom/helger/jcodemodel/JVar;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    iget-object v1, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/helger/jcodemodel/JVar;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method

.method public listVarParam()Lcom/helger/jcodemodel/JVar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->varParam()Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public listVarParamType()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->type()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mods()Lcom/helger/jcodemodel/JMods;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aMods:Lcom/helger/jcodemodel/JMods;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_sName:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/helger/jcodemodel/JMethod;->m_sName:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    return-object v0
.end method

.method public param(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 3
    .parameter
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
    .line 218
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    invoke-static {p1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    .line 219
    iget-object v1, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-object v0
.end method

.method public param(ILjava/lang/Class;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 1
    .parameter
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
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/helger/jcodemodel/JVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/helger/jcodemodel/JMethod;->param(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public param(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
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
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JMethod;->param(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/Class;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/helger/jcodemodel/JVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/helger/jcodemodel/JMethod;->param(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public paramAtIndex(I)Lcom/helger/jcodemodel/JVar;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnegative;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method

.method public params()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JVar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aParams:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method

.method public type(Lcom/helger/jcodemodel/AbstractJType;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/helger/jcodemodel/JMethod;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 434
    return-void
.end method

.method public varParam()Lcom/helger/jcodemodel/JVar;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method

.method public varParam(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 4
    .parameter
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
    .line 320
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JMethod;->hasVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two varargs in a method,\nCheck if varParam method of JMethod is invoked more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    invoke-static {p1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractJType;->array()Lcom/helger/jcodemodel/JArrayClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    .line 326
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aVarParam:Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method

.method public varParam(ILjava/lang/Class;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
    .locals 1
    .parameter
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
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/helger/jcodemodel/JVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/helger/jcodemodel/JMethod;->varParam(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public varParam(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
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
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JMethod;->varParam(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method

.method public varParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/helger/jcodemodel/JVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/helger/jcodemodel/JMethod;->m_aOuter:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/helger/jcodemodel/JMethod;->varParam(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JVar;

    move-result-object v0

    return-object v0
.end method
