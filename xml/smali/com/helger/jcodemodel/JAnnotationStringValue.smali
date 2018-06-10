.class public Lcom/helger/jcodemodel/JAnnotationStringValue;
.super Lcom/helger/jcodemodel/AbstractJAnnotationValue;
.source "JAnnotationStringValue.java"


# instance fields
.field private final m_aNativeValue:Ljava/lang/Object;

.field private final m_aValue:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p1}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V
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
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJAnnotationValue;-><init>()V

    .line 70
    const-string v0, "Value"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    iput-object v0, p0, Lcom/helger/jcodemodel/JAnnotationStringValue;->m_aValue:Lcom/helger/jcodemodel/IJExpression;

    .line 71
    const-string v0, "NativeValue"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JAnnotationStringValue;->m_aNativeValue:Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationStringValue;->m_aValue:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 94
    return-void
.end method

.method public isNativeValueExpression()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationStringValue;->m_aNativeValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/helger/jcodemodel/IJExpression;

    return v0
.end method

.method public nativeValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationStringValue;->m_aNativeValue:Ljava/lang/Object;

    return-object v0
.end method

.method public value()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helger/jcodemodel/JAnnotationStringValue;->m_aValue:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method
