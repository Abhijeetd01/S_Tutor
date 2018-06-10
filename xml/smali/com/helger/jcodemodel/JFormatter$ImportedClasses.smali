.class final Lcom/helger/jcodemodel/JFormatter$ImportedClasses;
.super Ljava/lang/Object;
.source "JFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/JFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImportedClasses"
.end annotation


# instance fields
.field private final m_aClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/helger/jcodemodel/JFormatter;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->this$0:Lcom/helger/jcodemodel/JFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aClasses:Ljava/util/Set;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aNames:Ljava/util/Set;

    .line 232
    return-void
.end method

.method private _getClassForImport(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 237
    .line 238
    instance-of v0, p1, Lcom/helger/jcodemodel/JAnonymousClass;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Lcom/helger/jcodemodel/JAnonymousClass;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/JAnonymousClass;->base()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    .line 243
    :cond_0
    instance-of v0, p1, Lcom/helger/jcodemodel/JNarrowedClass;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    .line 248
    :cond_1
    return-object p1
.end method


# virtual methods
.method public add(Lcom/helger/jcodemodel/AbstractJClass;)Z
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->_getClassForImport(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aNames:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aClasses:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 285
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 286
    return-void
.end method

.method public contains(Lcom/helger/jcodemodel/AbstractJClass;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->_getClassForImport(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllSorted()Ljava/util/List;
    .locals 2
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
    .line 291
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->m_aClasses:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    invoke-static {}, Lcom/helger/jcodemodel/util/ClassNameComparator;->getInstance()Lcom/helger/jcodemodel/util/ClassNameComparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 293
    return-object v0
.end method
