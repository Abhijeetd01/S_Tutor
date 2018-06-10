.class public Lcom/helger/jcodemodel/JAnnotationArrayMember;
.super Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;
.source "JAnnotationArrayMember.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJAnnotatable;


# instance fields
.field private final _owner:Lcom/helger/jcodemodel/JCodeModel;

.field private final _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/AbstractJAnnotationValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/JCodeModel;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "owner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_owner:Lcom/helger/jcodemodel/JCodeModel;

    .line 70
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
    .line 407
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationUse;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JAnnotationUse;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 408
    iget-object v1, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
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
    .line 398
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;

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
    .line 415
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
    .line 430
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 447
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->indent()Lcom/helger/jcodemodel/JFormatter;

    .line 448
    const/4 v0, 0x1

    .line 449
    iget-object v1, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    .line 451
    if-nez v1, :cond_0

    .line 452
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 453
    :cond_0
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 454
    const/4 v0, 0x0

    move v1, v0

    .line 455
    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->outdent()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 457
    return-void
.end method

.method public getAllAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/helger/jcodemodel/AbstractJAnnotationValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_owner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method public param(B)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(B)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-object p0
.end method

.method public param(C)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(C)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public param(D)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(D)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object p0
.end method

.method public param(F)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(F)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-object p0
.end method

.method public param(I)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(I)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-object p0
.end method

.method public param(J)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(J)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-object p0
.end method

.method public param(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    return-object p0
.end method

.method public param(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-object p0
.end method

.method public param(Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-object p0
.end method

.method public param(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationArrayMember;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-object p0
.end method

.method public param(Ljava/lang/Enum;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationArrayMember;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Ljava/lang/Enum;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-object p0
.end method

.method public param(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0
.end method

.method public param(S)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(S)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-object p0
.end method

.method public param(Z)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {p1}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Z)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method

.method public varargs params([B)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 142
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p1, v0

    .line 143
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(B)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object p0
.end method

.method public varargs params([C)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 165
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    .line 166
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(C)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-object p0
.end method

.method public varargs params([D)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 188
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 189
    iget-object v4, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(D)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object p0
.end method

.method public varargs params([F)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 280
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 281
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(F)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-object p0
.end method

.method public varargs params([I)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 257
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 258
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(I)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-object p0
.end method

.method public varargs params([J)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 211
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 212
    iget-object v4, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(J)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object p0
.end method

.method public varargs params([Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 387
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 388
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-object p0
.end method

.method public varargs params([Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 349
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 350
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-object p0
.end method

.method public varargs params([Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 326
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 327
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-object p0
.end method

.method public varargs params([Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
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
            "Lcom/helger/jcodemodel/JAnnotationArrayMember;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 372
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 373
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-object p0
.end method

.method public varargs params([Ljava/lang/Enum;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/JAnnotationArrayMember;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 303
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 304
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Ljava/lang/Enum;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-object p0
.end method

.method public varargs params([Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 96
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 97
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object p0
.end method

.method public varargs params([S)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 234
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    .line 235
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(S)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-object p0
.end method

.method public varargs params([Z)Lcom/helger/jcodemodel/JAnnotationArrayMember;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 119
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-boolean v2, p1, v0

    .line 120
    iget-object v3, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-static {v2}, Lcom/helger/jcodemodel/JAnnotationArrayMember;->wrap(Z)Lcom/helger/jcodemodel/JAnnotationStringValue;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnegative;
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationArrayMember;->_values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
