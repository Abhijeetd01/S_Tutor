.class public Lcom/helger/jcodemodel/JCommentPart;
.super Ljava/util/ArrayList;
.source "JCommentPart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private static _escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 184
    .line 187
    :goto_0
    const-string v0, "*/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 188
    if-gez v0, :cond_0

    .line 189
    return-object p0

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<!---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private _flattenAppend(Ljava/lang/Object;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 100
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 101
    invoke-direct {p0, v2}, Lcom/helger/jcodemodel/JCommentPart;->_flattenAppend(Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 106
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-direct {p0, v1}, Lcom/helger/jcodemodel/JCommentPart;->_flattenAppend(Ljava/lang/Object;)V

    goto :goto_2

    .line 110
    :cond_3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JCommentPart;->_flattenAppend(Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public append(Ljava/lang/Object;)Lcom/helger/jcodemodel/JCommentPart;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JCommentPart;->add(Ljava/lang/Object;)Z

    .line 84
    return-object p0
.end method

.method protected format(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->isPrinting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCommentPart;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 128
    instance-of v2, v0, Lcom/helger/jcodemodel/AbstractJClass;

    if-eqz v2, :cond_0

    .line 129
    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCommentPart;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p1, p2}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCommentPart;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 141
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 144
    check-cast v0, Ljava/lang/String;

    .line 145
    :goto_2
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 149
    invoke-static {v3}, Lcom/helger/jcodemodel/JCommentPart;->_escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 150
    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_2

    .line 153
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-static {v0}, Lcom/helger/jcodemodel/JCommentPart;->_escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 157
    :cond_6
    instance-of v2, v0, Lcom/helger/jcodemodel/AbstractJClass;

    if-eqz v2, :cond_7

    .line 160
    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/AbstractJClass;->printLink(Lcom/helger/jcodemodel/JFormatter;)V

    goto :goto_1

    .line 163
    :cond_7
    instance-of v2, v0, Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v2, :cond_8

    .line 165
    check-cast v0, Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 168
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 171
    :cond_9
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCommentPart;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 172
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 173
    :cond_a
    return-void
.end method
