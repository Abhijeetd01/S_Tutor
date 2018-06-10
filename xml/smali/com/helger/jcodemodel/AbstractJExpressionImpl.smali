.class public abstract Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.super Ljava/lang/Object;
.source "AbstractJExpressionImpl.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _instanceof(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->_instanceof(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final _instanceof(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 384
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->_instanceof(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic band(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->band(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final band(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->band(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->bor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final bor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 276
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->bor(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final cand(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 282
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->cand(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic complement()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->complement()Lcom/helger/jcodemodel/JOpUnary;

    move-result-object v0

    return-object v0
.end method

.method public final complement()Lcom/helger/jcodemodel/JOpUnary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->complement(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnary;

    move-result-object v0

    return-object v0
.end method

.method public final component(I)Lcom/helger/jcodemodel/JArrayCompRef;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 425
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->component(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArrayCompRef;

    move-result-object v0

    return-object v0
.end method

.method public final component(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArrayCompRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 419
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->component(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArrayCompRef;

    move-result-object v0

    return-object v0
.end method

.method public final component0()Lcom/helger/jcodemodel/JArrayCompRef;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->component(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArrayCompRef;

    move-result-object v0

    return-object v0
.end method

.method public final cor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->cor(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->decr()Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public final decr()Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->postdecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic div(D)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(D)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic div(F)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(F)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic div(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic div(J)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(J)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final div(D)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 204
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final div(F)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final div(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final div(J)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final div(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 198
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->div(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eq(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->eq(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final eq(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 348
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->eq(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eq0()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->eq0()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final eq0()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->eq(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eqNull()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->eqNull()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final eqNull()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lcom/helger/jcodemodel/JExpr;->_null()Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->eq(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic gt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->gt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final gt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 324
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->gt(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic gt0()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->gt0()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final gt0()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->gt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic gte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->gte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final gte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 336
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->gte(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic gte0()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->gte0()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final gte0()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->gte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic incr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->incr()Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public final incr()Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->postincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 395
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->invoke(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 401
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->invoke(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->lt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final lt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->lt(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lt0()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->lt0()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final lt0()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->lt(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->lte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final lte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 312
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->lte(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lte0()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->lte0()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final lte0()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->lte(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus()Lcom/helger/jcodemodel/JOpUnary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(D)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(D)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(F)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(F)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(J)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(J)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final minus(D)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 144
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final minus(F)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 150
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final minus(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 156
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final minus(J)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->minus(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final minus()Lcom/helger/jcodemodel/JOpUnary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mod(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mod(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final mod(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 228
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->mod(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mul(D)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(D)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mul(F)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(F)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mul(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mul(J)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(J)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final mul(D)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 174
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final mul(F)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 180
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final mul(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 186
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final mul(J)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 192
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final mul(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->mul(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ne(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->ne(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final ne(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 366
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->ne(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ne0()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->ne0()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final ne0()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->ne(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic neNull()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->neNull()Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final neNull()Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Lcom/helger/jcodemodel/JExpr;->_null()Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->ne(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final not()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->not(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(D)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(D)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(F)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(F)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(J)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(J)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/lang/String;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Ljava/lang/String;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final plus(D)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final plus(F)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final plus(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final plus(J)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->plus(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final plus(Ljava/lang/String;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 132
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(Ljava/lang/String;)Lcom/helger/jcodemodel/JStringLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->plus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->predecr()Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public final predecr()Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->predecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic preincr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->preincr()Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public final preincr()Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->preincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public final ref(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 407
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->ref(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;

    move-result-object v0

    return-object v0
.end method

.method public final ref(Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 413
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->ref(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shl(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shl(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final shl(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 240
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final shl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 234
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->shl(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shr(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shr(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final shr(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final shr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 246
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->shr(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shrz(I)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shrz(I)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final shrz(I)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 264
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->shrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final shrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->shrz(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic xor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;->xor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method

.method public final xor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 294
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JOp;->xor(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;

    move-result-object v0

    return-object v0
.end method
