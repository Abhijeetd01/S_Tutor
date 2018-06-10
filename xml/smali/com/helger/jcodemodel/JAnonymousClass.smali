.class public Lcom/helger/jcodemodel/JAnonymousClass;
.super Lcom/helger/jcodemodel/JDefinedClass;
.source "JAnonymousClass.java"


# instance fields
.field private final m_aBaseClass:Lcom/helger/jcodemodel/AbstractJClass;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/helger/jcodemodel/JDefinedClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;ILjava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/helger/jcodemodel/JAnonymousClass;->m_aBaseClass:Lcom/helger/jcodemodel/AbstractJClass;

    .line 61
    return-void
.end method


# virtual methods
.method public base()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnonymousClass;->m_aBaseClass:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnonymousClass;->m_aBaseClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnonymousClass;->m_aBaseClass:Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    .line 84
    return-void
.end method
