.class public Lcom/helger/jcodemodel/JInvocation;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JInvocation.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;
.implements Lcom/helger/jcodemodel/IJOwnedMaybe;


# instance fields
.field private final _args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/IJExpression;",
            ">;"
        }
    .end annotation
.end field

.field private _typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JTypeVar;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

.field private final m_aObject:Lcom/helger/jcodemodel/IJGenerable;

.field private final m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

.field private final m_bIsConstructor:Z

.field private final m_sMethod:Lcom/helger/jcodemodel/JMethod;

.field private final m_sMethodName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JMethod;)V
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
    .line 137
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Lcom/helger/jcodemodel/JMethod;)V

    .line 138
    return-void
.end method

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
    .line 124
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJType;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    .line 174
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 175
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    .line 176
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethodName:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethod:Lcom/helger/jcodemodel/JMethod;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    .line 179
    iput-object p1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    .line 180
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 111
    invoke-virtual {p2}, Lcom/helger/jcodemodel/JMethod;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Lcom/helger/jcodemodel/JMethod;)V

    .line 112
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Lcom/helger/jcodemodel/JMethod;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    .line 156
    iput-object p1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 157
    iput-object p2, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    .line 158
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethodName:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethod:Lcom/helger/jcodemodel/JMethod;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    .line 161
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    .line 162
    return-void
.end method

.method private constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    .line 142
    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method name contains \'.\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 145
    iput-object p2, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    .line 146
    iput-object p3, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethodName:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethod:Lcom/helger/jcodemodel/JMethod;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    .line 149
    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    .line 150
    return-void
.end method

.method private _addTypeVars(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 370
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTypeVar;

    .line 373
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_0

    .line 374
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 376
    :cond_0
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move v1, v2

    .line 377
    goto :goto_0

    .line 378
    :cond_1
    const v0, 0xffff

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 380
    :cond_2
    return-void
.end method

.method private _narrowOwner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JInvocation;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    .line 326
    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No owner is present, so this invocation cannot be generified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    return-object v0
.end method

.method private methodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethodName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethodName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_sMethod:Lcom/helger/jcodemodel/JMethod;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JMethod;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private typeFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public arg(C)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(C)Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public arg(D)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 245
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public arg(F)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 258
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public arg(I)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 271
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public arg(J)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 284
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object p0
.end method

.method public arg(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 297
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(Ljava/lang/String;)Lcom/helger/jcodemodel/JStringLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public arg(Z)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 219
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(Z)Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public args()Ljava/util/List;
    .locals 2
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
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 476
    :cond_0
    :goto_0
    return v2

    .line 454
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 456
    check-cast p1, Lcom/helger/jcodemodel/JInvocation;

    .line 457
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    iget-object v3, p1, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    invoke-static {v0, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    iget-boolean v3, p1, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    invoke-static {v0, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->methodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/helger/jcodemodel/JInvocation;->methodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    iget-object v3, p1, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->typeFullName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/helger/jcodemodel/JInvocation;->typeFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-nez v0, :cond_4

    .line 466
    iget-object v0, p1, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 467
    :cond_4
    iget-object v0, p1, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p1, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v3, v2

    .line 471
    :goto_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 473
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTypeVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JTypeVar;->fullName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTypeVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JTypeVar;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move v2, v1

    .line 476
    goto/16 :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/16 v3, 0x28

    .line 389
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const-string v0, "new"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 395
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JInvocation;->_addTypeVars(Lcom/helger/jcodemodel/JFormatter;)V

    .line 396
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    .line 428
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    instance-of v0, v0, Lcom/helger/jcodemodel/JDefinedClass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    check-cast v0, Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    check-cast v0, Lcom/helger/jcodemodel/JAnonymousClass;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JAnonymousClass;->declareBody(Lcom/helger/jcodemodel/JFormatter;)V

    .line 437
    :cond_0
    return-void

    .line 401
    :cond_1
    const-string v0, "new"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aConstructorType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 402
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JInvocation;->_addTypeVars(Lcom/helger/jcodemodel/JFormatter;)V

    .line 403
    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 408
    :cond_2
    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->methodName()Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 414
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JInvocation;->_addTypeVars(Lcom/helger/jcodemodel/JFormatter;)V

    .line 415
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 431
    :cond_4
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 482
    new-instance v0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Z)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v0

    .line 483
    iget-boolean v1, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    if-nez v1, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->methodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Iterable;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v0

    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->typeFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v1

    .line 486
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(I)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JTypeVar;

    .line 491
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JTypeVar;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v0

    move-object v1, v0

    .line 492
    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode()I

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_bIsConstructor:Z

    return v0
.end method

.method public listArgs()[Lcom/helger/jcodemodel/IJExpression;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/helger/jcodemodel/IJExpression;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public narrow(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JInvocation;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/helger/jcodemodel/JTypeVarClass;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JTypeVarClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 351
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-nez v1, :cond_0

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-object p0
.end method

.method public narrow(Ljava/lang/Class;)Lcom/helger/jcodemodel/JInvocation;
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
            "Lcom/helger/jcodemodel/JInvocation;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->_narrowOwner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JInvocation;->narrow(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public narrow(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/helger/jcodemodel/JTypeVar;

    invoke-direct {p0}, Lcom/helger/jcodemodel/JInvocation;->_narrowOwner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/helger/jcodemodel/JTypeVar;-><init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-nez v1, :cond_0

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 441
    invoke-virtual {p1, p0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 442
    return-void
.end method

.method public typeParamList()Ljava/util/List;
    .locals 2
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
    .line 360
    iget-object v0, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helger/jcodemodel/JInvocation;->_typeVariables:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
