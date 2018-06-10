.class public Lcom/helger/jcodemodel/JAtom;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "JAtom.java"


# instance fields
.field private final _what:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "what"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/helger/jcodemodel/JAtom;->_what:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 76
    if-ne p1, p0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_2
    check-cast p1, Lcom/helger/jcodemodel/JAtom;

    .line 81
    iget-object v0, p0, Lcom/helger/jcodemodel/JAtom;->_what:Ljava/lang/String;

    iget-object v1, p1, Lcom/helger/jcodemodel/JAtom;->_what:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/helger/jcodemodel/JAtom;->_what:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 71
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JAtom;->_what:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/helger/jcodemodel/JAtom;->_what:Ljava/lang/String;

    return-object v0
.end method
