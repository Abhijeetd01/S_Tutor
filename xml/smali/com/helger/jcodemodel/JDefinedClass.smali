.class public Lcom/helger/jcodemodel/JDefinedClass;
.super Lcom/helger/jcodemodel/AbstractJClassContainer;
.source "JDefinedClass.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJDeclaration;
.implements Lcom/helger/jcodemodel/IJGenerifiable;
.implements Lcom/helger/jcodemodel/IJAnnotatable;
.implements Lcom/helger/jcodemodel/IJDocCommentable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helger/jcodemodel/AbstractJClassContainer",
        "<",
        "Lcom/helger/jcodemodel/JDefinedClass;",
        ">;",
        "Lcom/helger/jcodemodel/IJDeclaration;",
        "Lcom/helger/jcodemodel/IJGenerifiable;",
        "Lcom/helger/jcodemodel/IJAnnotatable;",
        "Lcom/helger/jcodemodel/IJDocCommentable;"
    }
.end annotation


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

.field private final m_aConstructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aEnumConstantsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JEnumConstant;",
            ">;"
        }
    .end annotation
.end field

.field final m_aFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JFieldVar;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

.field private m_aInstanceInit:Lcom/helger/jcodemodel/JBlock;

.field private final m_aInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation
.end field

.field private m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

.field private final m_aMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JMethod;",
            ">;"
        }
    .end annotation
.end field

.field private m_aMods:Lcom/helger/jcodemodel/JMods;

.field private m_aStaticInit:Lcom/helger/jcodemodel/JBlock;

.field private m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

.field private m_bHideFile:Z

.field private m_sDirectBlock:Ljava/lang/String;

.field public metadata:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJClassContainer;ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;I",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/EClassType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p1}, Lcom/helger/jcodemodel/IJClassContainer;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JDefinedClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;ILjava/lang/String;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 186
    const/4 v2, 0x0

    sget-object v4, Lcom/helger/jcodemodel/EClassType;->CLASS:Lcom/helger/jcodemodel/EClassType;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JDefinedClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helger/jcodemodel/JCodeModel;",
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;I",
            "Lcom/helger/jcodemodel/EClassType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/helger/jcodemodel/AbstractJClassContainer;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJClassContainer;Lcom/helger/jcodemodel/EClassType;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/helger/jcodemodel/util/ClassNameComparator;->getInstance()Lcom/helger/jcodemodel/util/ClassNameComparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInterfaces:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aConstructors:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMethods:Ljava/util/List;

    .line 123
    iput-boolean v2, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_bHideFile:Z

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aEnumConstantsByName:Ljava/util/Map;

    .line 156
    new-instance v0, Lcom/helger/jcodemodel/JDefinedClass$1;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JDefinedClass$1;-><init>(Lcom/helger/jcodemodel/JDefinedClass;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    .line 211
    if-eqz p5, :cond_3

    .line 213
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JDefinedClass name empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JDefinedClass name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contains illegal character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for beginning of identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 227
    invoke-virtual {p5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 228
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JDefinedClass name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contains illegal character "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    invoke-static {p3}, Lcom/helger/jcodemodel/JMods;->forInterface(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMods:Lcom/helger/jcodemodel/JMods;

    .line 240
    :goto_1
    return-void

    .line 239
    :cond_4
    invoke-static {p3}, Lcom/helger/jcodemodel/JMods;->forClass(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMods:Lcom/helger/jcodemodel/JMods;

    goto :goto_1
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public _extends(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDefinedClass;->_implements(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object p0

    .line 274
    :goto_0
    return-object p0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to set the super class for an interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    if-nez p1, :cond_2

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_2
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 263
    if-ne p0, v0, :cond_3

    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal class inheritance loop.  Outer class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " may not subclass from inner class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_3
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_4
    iput-object p1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    goto :goto_0
.end method

.method public _extends(Ljava/lang/Class;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JDefinedClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDefinedClass;->_extends(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method public _implements(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    return-object p0
.end method

.method public _implements(Ljava/lang/Class;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JDefinedClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDefinedClass;->_implements(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JDefinedClass;

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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInterfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final _package()Lcom/helger/jcodemodel/JPackage;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    .line 717
    :goto_0
    instance-of v1, v0, Lcom/helger/jcodemodel/JPackage;

    if-nez v1, :cond_0

    .line 718
    invoke-interface {v0}, Lcom/helger/jcodemodel/IJClassContainer;->parentContainer()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    goto :goto_0

    .line 719
    :cond_0
    check-cast v0, Lcom/helger/jcodemodel/JPackage;

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
    .line 769
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    .line 771
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 772
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
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
    .line 763
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDefinedClass;->annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

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
    .line 779
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
    .line 785
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public binaryName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->getOuter()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClassContainer;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClassContainer;->binaryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->fullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor(I)Lcom/helger/jcodemodel/JMethod;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/helger/jcodemodel/JMethod;

    invoke-direct {v0, p1, p0}, Lcom/helger/jcodemodel/JMethod;-><init>(ILcom/helger/jcodemodel/JDefinedClass;)V

    .line 490
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aConstructors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    return-object v0
.end method

.method public constructors()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/JMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aConstructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public containsField(Ljava/lang/String;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 450
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClassContainer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/helger/jcodemodel/JDefinedClass;->createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;

    move-result-object v0

    return-object v0
.end method

.method protected createInnerClass(ILcom/helger/jcodemodel/EClassType;Ljava/lang/String;)Lcom/helger/jcodemodel/JDefinedClass;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 804
    new-instance v0, Lcom/helger/jcodemodel/JDefinedClass;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/helger/jcodemodel/JDefinedClass;-><init>(Lcom/helger/jcodemodel/IJClassContainer;ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)V

    return-object v0
.end method

.method public declare(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 604
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JAnnotationUse;

    .line 610
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMods:Lcom/helger/jcodemodel/JMods;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->getClassType()Lcom/helger/jcodemodel/EClassType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/EClassType;->declarationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    .line 619
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 622
    const/4 v0, 0x1

    .line 623
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    const-string v2, "extends"

    invoke-virtual {v1, v2}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aSuperClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1, v2}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInterfaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 629
    if-nez v0, :cond_3

    .line 630
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 631
    :cond_3
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "extends"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 632
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInterfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    .line 633
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    .line 636
    :cond_4
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDefinedClass;->declareBody(Lcom/helger/jcodemodel/JFormatter;)V

    .line 637
    return-void

    .line 631
    :cond_5
    const-string v0, "implements"

    goto :goto_1
.end method

.method protected declareBody(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 647
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    .line 648
    const/4 v0, 0x1

    .line 650
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aEnumConstantsByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aEnumConstantsByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JEnumConstant;

    .line 654
    if-eqz v1, :cond_0

    .line 655
    const/4 v1, 0x0

    .line 658
    :goto_1
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 657
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 660
    :cond_1
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JFieldVar;

    .line 665
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_2

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aStaticInit:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_4

    .line 669
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, "static"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aStaticInit:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 672
    :cond_4
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInstanceInit:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_5

    .line 673
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInstanceInit:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aConstructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JMethod;

    .line 677
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_3

    .line 680
    :cond_6
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JMethod;

    .line 681
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_4

    .line 684
    :cond_7
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aClasses:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 685
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    .line 686
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_5

    .line 689
    :cond_8
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_sDirectBlock:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 690
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_sDirectBlock:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 692
    :cond_9
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 693
    return-void
.end method

.method public direct(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_sDirectBlock:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 706
    iput-object p1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_sDirectBlock:Ljava/lang/String;

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    if-eqz p1, :cond_0

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_sDirectBlock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_sDirectBlock:Ljava/lang/String;

    goto :goto_0
.end method

.method public enumConstant(Ljava/lang/String;)Lcom/helger/jcodemodel/JEnumConstant;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aEnumConstantsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JEnumConstant;

    .line 338
    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/helger/jcodemodel/JEnumConstant;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JEnumConstant;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aEnumConstantsByName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    return-object v0
.end method

.method public field(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldVar;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/helger/jcodemodel/JDefinedClass;->field(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JFieldVar;

    move-result-object v0

    return-object v0
.end method

.method public field(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JFieldVar;
    .locals 6
    .parameter
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
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lcom/helger/jcodemodel/JFieldVar;

    invoke-static {p1}, Lcom/helger/jcodemodel/JMods;->forField(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldVar;-><init>(Lcom/helger/jcodemodel/JDefinedClass;Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    .line 403
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to create the same field twice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-object v0
.end method

.method public field(ILjava/lang/Class;Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldVar;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/helger/jcodemodel/JFieldVar;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/helger/jcodemodel/JDefinedClass;->field(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldVar;

    move-result-object v0

    return-object v0
.end method

.method public field(ILjava/lang/Class;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JFieldVar;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/IJExpression;",
            ")",
            "Lcom/helger/jcodemodel/JFieldVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/helger/jcodemodel/JDefinedClass;->field(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JFieldVar;

    move-result-object v0

    return-object v0
.end method

.method public fields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JFieldVar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public generify(Ljava/lang/String;)Lcom/helger/jcodemodel/JTypeVar;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->generify(Ljava/lang/String;)Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    return-object v0
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
    .line 737
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->generify(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JTypeVar;

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
    .line 731
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->generify(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    return-object v0
.end method

.method public getConstructor([Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JMethod;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aConstructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JMethod;

    .line 514
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JMethod;->hasSignature([Lcom/helger/jcodemodel/AbstractJType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;[Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JMethod;
    .locals 3
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JMethod;

    .line 567
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JMethod;->hasSignature([Lcom/helger/jcodemodel/AbstractJType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_bHideFile:Z

    .line 594
    return-void
.end method

.method public init()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aStaticInit:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aStaticInit:Lcom/helger/jcodemodel/JBlock;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aStaticInit:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public instanceInit()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInstanceInit:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInstanceInit:Lcom/helger/jcodemodel/JBlock;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aInstanceInit:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMods:Lcom/helger/jcodemodel/JMods;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JMods;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_bHideFile:Z

    return v0
.end method

.method public javadoc()Lcom/helger/jcodemodel/JDocComment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/helger/jcodemodel/JDocComment;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JDocComment;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aJDoc:Lcom/helger/jcodemodel/JDocComment;

    return-object v0
.end method

.method public method(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JMethod;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 534
    new-instance v0, Lcom/helger/jcodemodel/JMethod;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/helger/jcodemodel/JMethod;-><init>(Lcom/helger/jcodemodel/JDefinedClass;ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMethods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    return-object v0
.end method

.method public method(ILjava/lang/Class;Ljava/lang/String;)Lcom/helger/jcodemodel/JMethod;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/helger/jcodemodel/JMethod;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JCodeModel;->_ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/helger/jcodemodel/JDefinedClass;->method(ILcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)Lcom/helger/jcodemodel/JMethod;

    move-result-object v0

    return-object v0
.end method

.method public methods()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/helger/jcodemodel/JMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMethods:Ljava/util/List;

    return-object v0
.end method

.method public mods()Lcom/helger/jcodemodel/JMods;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aMods:Lcom/helger/jcodemodel/JMods;

    return-object v0
.end method

.method public removeField(Lcom/helger/jcodemodel/JFieldVar;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aFields:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFieldVar;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 440
    :cond_0
    return-void
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 0
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

    .prologue
    .line 757
    return-object p0
.end method

.method public typeParamList()Ljava/util/List;
    .locals 1
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
    .line 750
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->typeParamList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public typeParams()[Lcom/helger/jcodemodel/JTypeVar;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass;->m_aGenerifiable:Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;->typeParams()[Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v0

    return-object v0
.end method
