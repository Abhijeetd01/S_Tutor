.class public abstract Lcom/helger/jcodemodel/AbstractJClass;
.super Lcom/helger/jcodemodel/AbstractJType;
.source "AbstractJClass.java"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/helger/jcodemodel/JTypeVar;


# instance fields
.field private m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

.field private final m_aOwner:Lcom/helger/jcodemodel/JCodeModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/helger/jcodemodel/JTypeVar;

    sput-object v0, Lcom/helger/jcodemodel/AbstractJClass;->EMPTY_ARRAY:[Lcom/helger/jcodemodel/JTypeVar;

    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJType;-><init>()V

    .line 74
    const-string v0, "Owner"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCodeModel;

    iput-object v0, p0, Lcom/helger/jcodemodel/AbstractJClass;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 75
    return-void
.end method


# virtual methods
.method public abstract _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract _implements()Ljava/util/Iterator;
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
.end method

.method public abstract _package()Lcom/helger/jcodemodel/JPackage;
.end method

.method public array()Lcom/helger/jcodemodel/JArrayClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClass;->m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/helger/jcodemodel/JArrayClass;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JArrayClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/AbstractJType;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/AbstractJClass;->m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClass;->m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

    return-object v0
.end method

.method public boxify()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    return-object p0
.end method

.method public final dotclass()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 404
    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->dotclass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJExpressionImpl;

    move-result-object v0

    return-object v0
.end method

.method public erasure()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 180
    return-object p0
.end method

.method public bridge synthetic erasure()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 461
    invoke-virtual {p1, p0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    .line 462
    return-void
.end method

.method public final getBaseClass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-object p0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->_extends()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/AbstractJClass;->getBaseClass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 222
    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->_implements()Ljava/util/Iterator;

    move-result-object v1

    .line 226
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/AbstractJClass;->getBaseClass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p0

    .line 229
    if-eqz p0, :cond_2

    goto :goto_0

    .line 233
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getBaseClass(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;
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
            "Lcom/helger/jcodemodel/AbstractJClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;->getBaseClass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitiveType()Lcom/helger/jcodemodel/JPrimitiveType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isInterface()Z
.end method

.method public final isParameterized()Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public narrow(Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 309
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/JNarrowedClass;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p0, v1}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public varargs narrow([Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 301
    array-length v0, p1

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/helger/jcodemodel/JNarrowedClass;

    invoke-virtual {p1}, [Lcom/helger/jcodemodel/AbstractJClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public varargs narrow([Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/AbstractJClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 270
    array-length v0, p1

    new-array v1, v0, [Lcom/helger/jcodemodel/AbstractJClass;

    .line 271
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v2

    aput-object v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/AbstractJClass;->narrow([Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
.end method

.method public narrow(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JNarrowedClass;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/helger/jcodemodel/JNarrowedClass;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/AbstractJClass;)V

    return-object v0
.end method

.method public narrow(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JNarrowedClass;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->boxify()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;->narrow(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JNarrowedClass;

    move-result-object v0

    return-object v0
.end method

.method public narrow(Ljava/lang/Class;)Lcom/helger/jcodemodel/JNarrowedClass;
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
            "Lcom/helger/jcodemodel/JNarrowedClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;->narrow(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JNarrowedClass;

    move-result-object v0

    return-object v0
.end method

.method public outer()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public final owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJClass;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method printLink(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 472
    const-string/jumbo v0, "{@link "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 473
    return-void
.end method

.method public final staticInvoke(Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JMethod;)V

    return-object v0
.end method

.method public final staticInvoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)V

    return-object v0
.end method

.method public final staticRef(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/JVar;)V

    return-object v0
.end method

.method public final staticRef(Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
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
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeParams()[Lcom/helger/jcodemodel/JTypeVar;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/helger/jcodemodel/AbstractJClass;->EMPTY_ARRAY:[Lcom/helger/jcodemodel/JTypeVar;

    return-object v0
.end method

.method public unboxify()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJClass;->getPrimitiveType()Lcom/helger/jcodemodel/JPrimitiveType;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public final wildcard()Lcom/helger/jcodemodel/JTypeWildcard;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->EXTENDS:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;->wildcard(Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;)Lcom/helger/jcodemodel/JTypeWildcard;

    move-result-object v0

    return-object v0
.end method

.method public final wildcard(Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;)Lcom/helger/jcodemodel/JTypeWildcard;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lcom/helger/jcodemodel/JTypeWildcard;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JTypeWildcard;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;)V

    return-object v0
.end method

.method public final wildcardSuper()Lcom/helger/jcodemodel/JTypeWildcard;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;->SUPER:Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;->wildcard(Lcom/helger/jcodemodel/JTypeWildcard$EBoundMode;)Lcom/helger/jcodemodel/JTypeWildcard;

    move-result-object v0

    return-object v0
.end method
