.class public final Lcom/helger/jcodemodel/JDirectStatement;
.super Ljava/lang/Object;
.source "JDirectStatement.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private m_sSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JDirectStatement;->source(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public source()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/helger/jcodemodel/JDirectStatement;->m_sSource:Ljava/lang/String;

    return-object v0
.end method

.method public source(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JDirectStatement;->m_sSource:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/helger/jcodemodel/JDirectStatement;->m_sSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 77
    return-void
.end method
