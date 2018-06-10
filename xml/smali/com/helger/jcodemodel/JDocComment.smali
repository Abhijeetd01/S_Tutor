.class public Lcom/helger/jcodemodel/JDocComment;
.super Lcom/helger/jcodemodel/JCommentPart;
.source "JDocComment.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;
.implements Lcom/helger/jcodemodel/IJOwned;


# static fields
.field private static final INDENT:Ljava/lang/String; = " *     "

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

.field private m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

.field private final m_aAtParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JCommentPart;",
            ">;"
        }
    .end annotation
.end field

.field private m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

.field private final m_aAtThrows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            "Lcom/helger/jcodemodel/JCommentPart;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aAtXdoclets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_aOwner:Lcom/helger/jcodemodel/JCodeModel;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/helger/jcodemodel/JCommentPart;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtXdoclets:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    .line 92
    const-string v0, "Owner"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCodeModel;

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 93
    return-void
.end method


# virtual methods
.method public addAuthor()Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/helger/jcodemodel/JCommentPart;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JCommentPart;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public addDeprecated()Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/helger/jcodemodel/JCommentPart;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JCommentPart;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public addParam(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JVar;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDocComment;->addParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JCommentPart;

    move-result-object v0

    return-object v0
.end method

.method public addParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    .line 119
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/helger/jcodemodel/JCommentPart;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JCommentPart;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-object v0
.end method

.method public addReturn()Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/helger/jcodemodel/JCommentPart;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JCommentPart;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public addThrows(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    .line 190
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/helger/jcodemodel/JCommentPart;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JCommentPart;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    return-object v0
.end method

.method public addThrows(Ljava/lang/Class;)Lcom/helger/jcodemodel/JCommentPart;
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
            "Lcom/helger/jcodemodel/JCommentPart;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDocComment;->addThrows(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCommentPart;

    move-result-object v0

    return-object v0
.end method

.method public addXdoclet(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtXdoclets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 292
    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtXdoclets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    return-object v0
.end method

.method public addXdoclet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDocComment;->addXdoclet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 332
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-object v0
.end method

.method public addXdoclet(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDocComment;->addXdoclet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 313
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 314
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDocComment;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/JDocComment;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;)Lcom/helger/jcodemodel/JDocComment;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDocComment;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 352
    const-string v0, "/**"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 354
    const-string v0, " * "

    invoke-virtual {p0, p1, v0}, Lcom/helger/jcodemodel/JDocComment;->format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    .line 356
    const-string v0, " * "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 357
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    const-string v1, " * @param "

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    const-string v1, " *     "

    invoke-virtual {v0, p1, v1}, Lcom/helger/jcodemodel/JCommentPart;->format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

    if-eqz v0, :cond_1

    .line 364
    const-string v0, " * @return"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 365
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

    const-string v1, " *     "

    invoke-virtual {v0, p1, v1}, Lcom/helger/jcodemodel/JCommentPart;->format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

    if-eqz v0, :cond_2

    .line 369
    const-string v0, " * @author"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 370
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

    const-string v1, " *     "

    invoke-virtual {v0, p1, v1}, Lcom/helger/jcodemodel/JCommentPart;->format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 374
    const-string v1, " * @throws "

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v3, v1}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    const-string v1, " *     "

    invoke-virtual {v0, p1, v1}, Lcom/helger/jcodemodel/JCommentPart;->format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

    if-eqz v0, :cond_4

    .line 379
    const-string v0, " * @deprecated"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 380
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

    const-string v1, " *     "

    invoke-virtual {v0, p1, v1}, Lcom/helger/jcodemodel/JCommentPart;->format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtXdoclets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 384
    const-string v1, " * @"

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 389
    const-string v1, " "

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    const-string v4, "= \""

    invoke-virtual {v1, v4}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_3

    .line 392
    :cond_5
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_2

    .line 394
    :cond_6
    const-string v0, " */"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 395
    return-void
.end method

.method public getParam(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JVar;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDocComment;->getParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JCommentPart;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public getThrows(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public getThrows(Ljava/lang/Class;)Lcom/helger/jcodemodel/JCommentPart;
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
            "Lcom/helger/jcodemodel/JCommentPart;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDocComment;->getThrows(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCommentPart;

    move-result-object v0

    return-object v0
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method public removeAllParams()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    return-void
.end method

.method public removeAllThrows()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    return-void
.end method

.method public removeAllXdoclets()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtXdoclets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 345
    return-void
.end method

.method public removeAuthor()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtAuthor:Lcom/helger/jcodemodel/JCommentPart;

    .line 261
    return-void
.end method

.method public removeDeprecated()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtDeprecated:Lcom/helger/jcodemodel/JCommentPart;

    .line 279
    return-void
.end method

.method public removeParam(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JVar;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDocComment;->removeParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JCommentPart;

    move-result-object v0

    return-object v0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public removeReturn()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtReturn:Lcom/helger/jcodemodel/JCommentPart;

    .line 243
    return-void
.end method

.method public removeThrows(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtThrows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCommentPart;

    return-object v0
.end method

.method public removeThrows(Ljava/lang/Class;)Lcom/helger/jcodemodel/JCommentPart;
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
            "Lcom/helger/jcodemodel/JCommentPart;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JDocComment;->removeThrows(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCommentPart;

    move-result-object v0

    return-object v0
.end method

.method public removeXdoclet(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/helger/jcodemodel/JDocComment;->m_aAtXdoclets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
