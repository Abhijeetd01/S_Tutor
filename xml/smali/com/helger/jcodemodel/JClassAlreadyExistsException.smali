.class public Lcom/helger/jcodemodel/JClassAlreadyExistsException;
.super Ljava/lang/Exception;
.source "JClassAlreadyExistsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final m_aExisting:Lcom/helger/jcodemodel/AbstractJClass;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/AbstractJClass;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/helger/jcodemodel/JClassAlreadyExistsException;->m_aExisting:Lcom/helger/jcodemodel/AbstractJClass;

    .line 59
    return-void
.end method


# virtual methods
.method public getExistingClass()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helger/jcodemodel/JClassAlreadyExistsException;->m_aExisting:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method
