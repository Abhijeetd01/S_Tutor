.class public Lcom/helger/jcodemodel/JPrimitiveType;
.super Lcom/helger/jcodemodel/AbstractJType;
.source "JPrimitiveType.java"


# static fields
.field public static final BOOLEAN:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final BYTE:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final CHAR:Lcom/helger/jcodemodel/JPrimitiveType;

.field private static final CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

.field public static final DOUBLE:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final FLOAT:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final INT:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final LONG:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final SHORT:Lcom/helger/jcodemodel/JPrimitiveType;

.field public static final VOID:Lcom/helger/jcodemodel/JPrimitiveType;


# instance fields
.field private m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

.field private final m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

.field private final m_aWrapperClass:Lcom/helger/jcodemodel/AbstractJClass;

.field private m_bUseValueOf:Z

.field private final m_sTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/helger/jcodemodel/JCodeModel;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JCodeModel;-><init>()V

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    .line 52
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->VOID:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->VOID:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 53
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->BOOLEAN:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->BOOLEAN:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 54
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->BYTE:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->BYTE:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 55
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->SHORT:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->SHORT:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 56
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->CHAR:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CHAR:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 57
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->INT:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->INT:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 58
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->FLOAT:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->FLOAT:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 59
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->LONG:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->LONG:Lcom/helger/jcodemodel/JPrimitiveType;

    .line 60
    sget-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->CODE_MODEL:Lcom/helger/jcodemodel/JCodeModel;

    iget-object v0, v0, Lcom/helger/jcodemodel/JCodeModel;->DOUBLE:Lcom/helger/jcodemodel/JPrimitiveType;

    sput-object v0, Lcom/helger/jcodemodel/JPrimitiveType;->DOUBLE:Lcom/helger/jcodemodel/JPrimitiveType;

    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
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
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helger/jcodemodel/JCodeModel;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJType;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 78
    iput-object p2, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_sTypeName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1, p3}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aWrapperClass:Lcom/helger/jcodemodel/AbstractJClass;

    .line 80
    iput-boolean p4, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_bUseValueOf:Z

    .line 81
    return-void
.end method


# virtual methods
.method public array()Lcom/helger/jcodemodel/JArrayClass;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/helger/jcodemodel/JArrayClass;

    iget-object v1, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JArrayClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/AbstractJType;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aArrayClass:Lcom/helger/jcodemodel/JArrayClass;

    return-object v0
.end method

.method public boxify()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aWrapperClass:Lcom/helger/jcodemodel/AbstractJClass;

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_sTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 214
    return-void
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPrimitiveType;->fullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method public unboxify()Lcom/helger/jcodemodel/AbstractJType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 139
    return-object p0
.end method

.method public unwrap(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 180
    const-string v0, "void"

    iget-object v1, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unwrap a \'void\' expression!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/helger/jcodemodel/IJExpression;->invoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public useValueOf(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_bUseValueOf:Z

    .line 209
    return-void
.end method

.method public useValueOf()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_bUseValueOf:Z

    return v0
.end method

.method public wrap(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 158
    const-string v0, "void"

    iget-object v1, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_sTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot wrap a \'void\' expression!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JPrimitiveType;->m_bUseValueOf:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPrimitiveType;->boxify()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/AbstractJClass;->staticInvoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPrimitiveType;->boxify()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->_new(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JInvocation;->arg(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    goto :goto_0
.end method
