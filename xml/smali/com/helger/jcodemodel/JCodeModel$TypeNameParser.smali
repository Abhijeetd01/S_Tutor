.class final Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;
.super Ljava/lang/Object;
.source "JCodeModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/JCodeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TypeNameParser"
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private m_nIdx:I

.field private final m_sTypeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/helger/jcodemodel/JCodeModel;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->this$0:Lcom/helger/jcodemodel/JCodeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    .line 784
    return-void
.end method

.method private _parseArguments(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    .line 887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 888
    :cond_0
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    :goto_0
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->parseTypeName()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 896
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \'>\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 898
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_2

    .line 899
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/AbstractJClass;->narrow(Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0

    .line 901
    :cond_2
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    .line 902
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_3
    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    goto :goto_0
.end method

.method private _parseSuffix(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 845
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-object p1

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 853
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 854
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_parseArguments(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_parseSuffix(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    goto :goto_0

    .line 856
    :cond_2
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_3

    .line 860
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    .line 861
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->array()Lcom/helger/jcodemodel/JArrayClass;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_parseSuffix(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    goto :goto_0

    .line 863
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \']\' but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v3, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _skipWs()V
    .locals 2

    .prologue
    .line 874
    :goto_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 875
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    goto :goto_0

    .line 876
    :cond_0
    return-void
.end method


# virtual methods
.method parseTypeName()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 795
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    .line 797
    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_2

    .line 800
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    .line 801
    invoke-direct {p0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_skipWs()V

    .line 803
    iget-object v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    const-string v1, "extends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    .line 808
    invoke-direct {p0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_skipWs()V

    .line 809
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->parseTypeName()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->wildcard()Lcom/helger/jcodemodel/JTypeWildcard;

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    .line 812
    :cond_0
    const-string v1, "super"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    .line 816
    invoke-direct {p0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_skipWs()V

    .line 817
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->parseTypeName()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->wildcardSuper()Lcom/helger/jcodemodel/JTypeWildcard;

    move-result-object v0

    goto :goto_0

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only extends/super can follow ?, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v3, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_2
    :goto_1
    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 827
    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 828
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_4

    .line 829
    :cond_3
    iget v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    goto :goto_1

    .line 834
    :cond_4
    iget-object v1, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->this$0:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v2, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_sTypeName:Ljava/lang/String;

    iget v3, p0, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->m_nIdx:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 835
    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/JCodeModel$TypeNameParser;->_parseSuffix(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    goto :goto_0
.end method
