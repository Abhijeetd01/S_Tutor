.class public abstract Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;
.super Lcom/helger/jcodemodel/AbstractJAnnotationValue;
.source "AbstractJAnnotationValueOwned.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJOwned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned$FullClassNameExpr;,
        Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned$JEnumConstantExpr;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJAnnotationValue;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public wrap(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/AbstractJAnnotationValue;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    new-instance v1, Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned$FullClassNameExpr;

    invoke-direct {v1, p0, p1}, Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned$FullClassNameExpr;-><init>(Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;Ljava/lang/Class;)V

    invoke-direct {v0, v1, p1}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method

.method public wrap(Ljava/lang/Enum;)Lcom/helger/jcodemodel/AbstractJAnnotationValue;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/AbstractJAnnotationValue;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/helger/jcodemodel/JAnnotationStringValue;

    new-instance v1, Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned$JEnumConstantExpr;

    invoke-direct {v1, p0, p1}, Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned$JEnumConstantExpr;-><init>(Lcom/helger/jcodemodel/AbstractJAnnotationValueOwned;Ljava/lang/Enum;)V

    invoke-direct {v0, v1, p1}, Lcom/helger/jcodemodel/JAnnotationStringValue;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/Object;)V

    return-object v0
.end method
