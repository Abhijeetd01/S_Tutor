.class public interface abstract Lcom/helger/jcodemodel/IJExpression;
.super Ljava/lang/Object;
.source "IJExpression.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;


# virtual methods
.method public abstract _instanceof(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract band(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract bor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract cand(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract complement()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract component(I)Lcom/helger/jcodemodel/JArrayCompRef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract component(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArrayCompRef;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract component0()Lcom/helger/jcodemodel/JArrayCompRef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract cor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract decr()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract div(D)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract div(F)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract div(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract div(J)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract eq(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract eq0()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract eqNull()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract gt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract gt0()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract gte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract gte0()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract incr()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract invoke(Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract invoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract lt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract lt0()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract lte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract lte0()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract minus()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract minus(D)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract minus(F)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract minus(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract minus(J)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract mod(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract mul(D)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract mul(F)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract mul(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract mul(J)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract ne(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract ne0()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract neNull()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract not()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract plus(D)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract plus(F)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract plus(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract plus(J)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract plus(Ljava/lang/String;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract predecr()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract preincr()Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract ref(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract ref(Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract shl(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract shl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract shr(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract shr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract shrz(I)Lcom/helger/jcodemodel/IJExpression;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract shrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract xor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
