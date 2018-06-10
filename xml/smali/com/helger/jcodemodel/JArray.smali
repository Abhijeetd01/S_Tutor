.class public Lcom/helger/jcodemodel/JArray;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JArray.java"


# instance fields
.field private m_aExprs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/IJExpression;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aSize:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aType:Lcom/helger/jcodemodel/AbstractJType;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/helger/jcodemodel/JArray;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 65
    iput-object p2, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    .line 66
    return-void
.end method


# virtual methods
.method public add(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArray;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    if-ne p1, p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JArray;

    .line 161
    iget-object v2, p0, Lcom/helger/jcodemodel/JArray;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/helger/jcodemodel/JArray;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v3}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    iget-object v3, p1, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    iget-object v3, p1, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public exprs()Ljava/util/List;
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
    .line 111
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    .line 126
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 127
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JArray;->hasExprs()Z

    move-result v3

    move v1, v2

    .line 129
    :goto_0
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJType;->elementType()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const-string v4, "new"

    invoke-virtual {p1, v4}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 136
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 138
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 140
    :goto_1
    if-ge v2, v1, :cond_2

    .line 141
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    .line 144
    :cond_3
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 145
    :cond_4
    if-eqz v3, :cond_7

    .line 146
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;

    .line 149
    :goto_2
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_6

    .line 150
    :cond_5
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 151
    :cond_6
    return-void

    .line 148
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_2
.end method

.method public hasExprs()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

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
    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JArray;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJType;->fullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeAll()Lcom/helger/jcodemodel/JArray;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aExprs:Ljava/util/List;

    .line 105
    return-object p0
.end method

.method public size()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aSize:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helger/jcodemodel/JArray;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method
