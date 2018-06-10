.class public Lcom/helger/jcodemodel/JNarrowedClass;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JNarrowedClass.java"


# instance fields
.field private final _args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation
.end field

.field private final _basis:Lcom/helger/jcodemodel/AbstractJClass;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/AbstractJClass;)V
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
    .line 69
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V
    .locals 3
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
            "Lcom/helger/jcodemodel/AbstractJClass;",
            "Ljava/util/List",
            "<+",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 75
    instance-of v0, p1, Lcom/helger/jcodemodel/JNarrowedClass;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "basis may not be a narrowed class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments are missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    iput-object p1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    .line 80
    iput-object p2, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/helger/jcodemodel/JNarrowedClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helger/jcodemodel/JNarrowedClass;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->_extends()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->typeParams()[Lcom/helger/jcodemodel/JTypeVar;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/helger/jcodemodel/AbstractJClass;->substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
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
    .line 213
    new-instance v0, Lcom/helger/jcodemodel/JNarrowedClass$1;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JNarrowedClass$1;-><init>(Lcom/helger/jcodemodel/JNarrowedClass;)V

    return-object v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public basis()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public binaryName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->binaryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 159
    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 163
    :goto_1
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->binaryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    if-ne p1, p0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 309
    goto :goto_0

    .line 310
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JNarrowedClass;

    .line 311
    iget-object v2, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    iget-object v3, p1, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    iget-object v3, p1, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public erasure()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public bridge synthetic erasure()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JNarrowedClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x1

    .line 138
    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 140
    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 144
    :goto_1
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 146
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 173
    return-void
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

    .prologue
    .line 275
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isError()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 266
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->isInterface()Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const/4 v0, 0x1

    .line 118
    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 120
    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 124
    :goto_1
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic narrow([Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JNarrowedClass;->narrow([Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JNarrowedClass;

    move-result-object v0

    return-object v0
.end method

.method public narrow(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JNarrowedClass;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Narrowing class is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/helger/jcodemodel/JNarrowedClass;

    iget-object v2, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-direct {v1, v2, v0}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    return-object v1
.end method

.method public varargs narrow([Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JNarrowedClass;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 103
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Narrowing classes are missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 108
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    new-instance v0, Lcom/helger/jcodemodel/JNarrowedClass;

    iget-object v2, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-direct {v0, v2, v1}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    return-object v0
.end method

.method printLink(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 4
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/AbstractJClass;->printLink(Lcom/helger/jcodemodel/JFormatter;)V

    .line 179
    const-string/jumbo v0, "{@code <}"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 180
    const/4 v0, 0x1

    .line 181
    iget-object v1, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 183
    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 187
    :goto_1
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/AbstractJClass;->printLink(Lcom/helger/jcodemodel/JFormatter;)V

    goto :goto_0

    .line 186
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 189
    :cond_1
    const-string/jumbo v0, "{@code >}"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 190
    return-void
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 8
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClass;->substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v4

    .line 282
    iget-object v0, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_basis:Lcom/helger/jcodemodel/AbstractJClass;

    if-eq v4, v0, :cond_0

    move v0, v1

    .line 284
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    iget-object v3, p0, Lcom/helger/jcodemodel/JNarrowedClass;->_args:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 287
    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractJClass;->substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v7

    .line 288
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    if-eq v7, v0, :cond_1

    move v0, v1

    :goto_2
    or-int/2addr v0, v3

    move v3, v0

    .line 290
    goto :goto_1

    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    :cond_1
    move v0, v2

    .line 289
    goto :goto_2

    .line 292
    :cond_2
    if-eqz v3, :cond_3

    .line 293
    new-instance p0, Lcom/helger/jcodemodel/JNarrowedClass;

    invoke-direct {p0, v4, v5}, Lcom/helger/jcodemodel/JNarrowedClass;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/util/List;)V

    .line 294
    :cond_3
    return-object p0
.end method
