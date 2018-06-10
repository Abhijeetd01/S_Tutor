.class public abstract Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;
.super Lcom/helger/jcodemodel/AbstractJExpressionImpl;
.source "AbstractJExpressionAssignmentTargetImpl.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJAssignmentTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic assign(C)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(C)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(D)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(D)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(F)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(F)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(J)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(J)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(Ljava/lang/String;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Ljava/lang/String;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assign(Z)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Z)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(C)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(C)Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(D)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 74
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(F)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(J)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assign(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(Ljava/lang/String;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(Ljava/lang/String;)Lcom/helger/jcodemodel/JStringLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assign(Z)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(Z)Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assign(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignBand(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignBand(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignBand(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignBand(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignBor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignBor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignBor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignBor(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignDivide(D)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(D)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignDivide(F)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(F)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignDivide(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignDivide(J)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(J)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignDivide(D)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 212
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignDivide(F)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 218
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignDivide(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignDivide(J)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 230
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignDivide(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignDivide(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinus(D)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(D)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinus(F)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(F)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinus(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinus(J)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(J)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignMinus(D)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 152
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignMinus(F)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignMinus(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 164
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignMinus(J)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 170
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignMinus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignMinus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(C)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(C)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(D)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(D)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(F)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(F)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(J)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(J)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPlus(Ljava/lang/String;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Ljava/lang/String;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(C)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(C)Lcom/helger/jcodemodel/JAtom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(D)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 116
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(F)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(J)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 134
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignPlus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignPlus(Ljava/lang/String;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 140
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(Ljava/lang/String;)Lcom/helger/jcodemodel/JStringLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignPlus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignShl(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShl(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignShl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignShl(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 242
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignShl(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignShl(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignShr(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShr(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignShr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignShr(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 254
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignShr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 248
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignShr(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignShrz(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShrz(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignShrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignShrz(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 266
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignShrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignShrz(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 260
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignShrz(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignTimes(D)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(D)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignTimes(F)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(F)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignTimes(I)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(I)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignTimes(J)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(J)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignTimes(D)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 182
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(D)Lcom/helger/jcodemodel/JAtomDouble;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignTimes(F)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 188
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(F)Lcom/helger/jcodemodel/JAtomFloat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignTimes(I)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 194
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignTimes(J)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 200
    invoke-static {p1, p2}, Lcom/helger/jcodemodel/JExpr;->lit(J)Lcom/helger/jcodemodel/JAtomLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignTimes(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 176
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignTimes(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignXor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpressionStatement;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;->assignXor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method

.method public assignXor(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 278
    invoke-static {p0, p1}, Lcom/helger/jcodemodel/JExpr;->assignXor(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;

    move-result-object v0

    return-object v0
.end method
