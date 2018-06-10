.class public Lcom/helger/jcodemodel/JStringLiteral;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JStringLiteral.java"


# instance fields
.field private m_sWhat:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JStringLiteral;->what(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 83
    if-ne p1, p0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_2
    check-cast p1, Lcom/helger/jcodemodel/JStringLiteral;

    .line 88
    iget-object v0, p0, Lcom/helger/jcodemodel/JStringLiteral;->m_sWhat:Ljava/lang/String;

    iget-object v1, p1, Lcom/helger/jcodemodel/JStringLiteral;->m_sWhat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 77
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/helger/jcodemodel/JStringLiteral;->m_sWhat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/helger/jcodemodel/JExpr;->quotify(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 78
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JStringLiteral;->m_sWhat:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public what()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/helger/jcodemodel/JStringLiteral;->m_sWhat:Ljava/lang/String;

    return-object v0
.end method

.method public what(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JStringLiteral;->m_sWhat:Ljava/lang/String;

    .line 73
    return-void
.end method
