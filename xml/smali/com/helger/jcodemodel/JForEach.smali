.class public Lcom/helger/jcodemodel/JForEach;
.super Ljava/lang/Object;
.source "JForEach.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private m_aBody:Lcom/helger/jcodemodel/JBlock;

.field private final m_aCollection:Lcom/helger/jcodemodel/IJExpression;

.field private final m_aLopVar:Lcom/helger/jcodemodel/JVar;

.field private final m_aType:Lcom/helger/jcodemodel/AbstractJType;

.field private final m_sVarName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Variable Type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Variable name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection expression"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iput-object p1, p0, Lcom/helger/jcodemodel/JForEach;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    .line 71
    iput-object p2, p0, Lcom/helger/jcodemodel/JForEach;->m_sVarName:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/helger/jcodemodel/JForEach;->m_aCollection:Lcom/helger/jcodemodel/IJExpression;

    .line 73
    new-instance v0, Lcom/helger/jcodemodel/JVar;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/helger/jcodemodel/JMods;->forVar(I)Lcom/helger/jcodemodel/JMods;

    move-result-object v1

    iget-object v2, p0, Lcom/helger/jcodemodel/JForEach;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    iget-object v3, p0, Lcom/helger/jcodemodel/JForEach;->m_sVarName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/helger/jcodemodel/JVar;-><init>(Lcom/helger/jcodemodel/JMods;Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aLopVar:Lcom/helger/jcodemodel/JVar;

    .line 74
    return-void
.end method


# virtual methods
.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public collection()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aCollection:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 107
    const-string v0, "for ("

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 108
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JForEach;->m_sVarName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JForEach;->m_aCollection:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 109
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 110
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aBody:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 115
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method

.method public type()Lcom/helger/jcodemodel/AbstractJType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aType:Lcom/helger/jcodemodel/AbstractJType;

    return-object v0
.end method

.method public var()Lcom/helger/jcodemodel/JVar;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/helger/jcodemodel/JForEach;->m_aLopVar:Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method
