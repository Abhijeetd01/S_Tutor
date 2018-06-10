.class public abstract Lcom/helger/jcodemodel/AbstractJAnnotationValue;
.super Ljava/lang/Object;
.source "AbstractJAnnotationValue.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(B)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(C)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(C)Lcom/helger/jcodemodel/JAtom;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(D)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 4
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(F)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(I)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(J)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 4
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->boxify()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->dotclass()Lcom/helger/jcodemodel/IJExpression;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static wrap(Lcom/helger/jcodemodel/JEnumConstant;)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(Ljava/lang/String;)Lcom/helger/jcodemodel/JStringLiteral;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(S)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static wrap(Z)Lcom/helger/jcodemodel/JAnnotationStringValue;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    invoke-static {p0}, Lcom/helger/jcodemodel/JExpr;->lit(Z)Lcom/helger/jcodemodel/JAtom;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method
