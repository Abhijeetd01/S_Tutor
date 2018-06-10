.class public final Lcom/helger/jcodemodel/JExpr;
.super Ljava/lang/Object;
.source "JExpr.java"


# static fields
.field private static final CHAR_ESCAPE:Ljava/lang/String; = "\u0008\t\n\u000c\r\"\'\\"

.field private static final CHAR_MACRO:Ljava/lang/String; = "btnfr\"\'\\"

.field public static final FALSE:Lcom/helger/jcodemodel/JAtom;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private static final NULL:Lcom/helger/jcodemodel/JAtom;

.field private static final SUPER:Lcom/helger/jcodemodel/JAtom;

.field private static final THIS:Lcom/helger/jcodemodel/JAtom;

.field public static final TRUE:Lcom/helger/jcodemodel/JAtom;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/helger/jcodemodel/JAtom;

    const-string v1, "true"

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAtom;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    .line 62
    new-instance v0, Lcom/helger/jcodemodel/JAtom;

    const-string v1, "false"

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAtom;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    .line 66
    new-instance v0, Lcom/helger/jcodemodel/JAtom;

    const-string v1, "this"

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAtom;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JExpr;->THIS:Lcom/helger/jcodemodel/JAtom;

    .line 67
    new-instance v0, Lcom/helger/jcodemodel/JAtom;

    const-string v1, "super"

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAtom;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JExpr;->SUPER:Lcom/helger/jcodemodel/JAtom;

    .line 68
    new-instance v0, Lcom/helger/jcodemodel/JAtom;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAtom;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helger/jcodemodel/JExpr;->NULL:Lcom/helger/jcodemodel/JAtom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _new(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJType;)V

    return-object v0
.end method

.method public static _new(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/AbstractJType;)V

    return-object v0
.end method

.method public static _null()Lcom/helger/jcodemodel/JAtom;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->NULL:Lcom/helger/jcodemodel/JAtom;

    return-object v0
.end method

.method public static _super()Lcom/helger/jcodemodel/JAtom;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 347
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->SUPER:Lcom/helger/jcodemodel/JAtom;

    return-object v0
.end method

.method public static _this()Lcom/helger/jcodemodel/JAtom;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->THIS:Lcom/helger/jcodemodel/JAtom;

    return-object v0
.end method

.method public static assign(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static assignBand(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "&"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignBor(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string/jumbo v1, "|"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignDivide(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "/"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignMinus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "-"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignPlus(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "+"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignShl(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "<<"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignShr(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, ">>"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignShrz(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, ">>>"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignTimes(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "*"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static assignXor(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JAssignment;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/helger/jcodemodel/JAssignment;

    const-string v1, "^"

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JAssignment;-><init>(Lcom/helger/jcodemodel/IJAssignmentTarget;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static cast(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JCast;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/helger/jcodemodel/JCast;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JCast;-><init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static component(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArrayCompRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/helger/jcodemodel/JArrayCompRef;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JArrayCompRef;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static cond(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpTernary;
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
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 505
    invoke-static {p0, p1, p2}, Lcom/helger/jcodemodel/JOp;->cond(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpTernary;

    move-result-object v0

    return-object v0
.end method

.method public static decr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 157
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->postdecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public static direct(Ljava/lang/String;)Lcom/helger/jcodemodel/AbstractJExpressionImpl;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lcom/helger/jcodemodel/JExpr$2;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JExpr$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dotclass(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/AbstractJExpressionImpl;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/helger/jcodemodel/JExpr$1;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JExpr$1;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    return-object v0
.end method

.method public static enumConstantRef(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)Lcom/helger/jcodemodel/JEnumConstantRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/helger/jcodemodel/JEnumConstantRef;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JEnumConstantRef;-><init>(Lcom/helger/jcodemodel/AbstractJClass;Ljava/lang/String;)V

    return-object v0
.end method

.method public static incr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 145
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->postincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)V

    return-object v0
.end method

.method public static invoke(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/helger/jcodemodel/JInvocation;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static invoke(Lcom/helger/jcodemodel/JMethod;)Lcom/helger/jcodemodel/JInvocation;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 187
    new-instance v1, Lcom/helger/jcodemodel/JInvocation;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-direct {v1, v0, p0}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JMethod;)V

    return-object v1
.end method

.method public static invoke(Ljava/lang/String;)Lcom/helger/jcodemodel/JInvocation;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 181
    new-instance v1, Lcom/helger/jcodemodel/JInvocation;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-direct {v1, v0, p0}, Lcom/helger/jcodemodel/JInvocation;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v1
.end method

.method public static lit(C)Lcom/helger/jcodemodel/JAtom;
    .locals 3
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lcom/helger/jcodemodel/JAtom;

    const/16 v1, 0x27

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helger/jcodemodel/JExpr;->quotify(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JAtom;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static lit(Z)Lcom/helger/jcodemodel/JAtom;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 361
    if-eqz p0, :cond_0

    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    goto :goto_0
.end method

.method public static lit(D)Lcom/helger/jcodemodel/JAtomDouble;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcom/helger/jcodemodel/JAtomDouble;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JAtomDouble;-><init>(D)V

    return-object v0
.end method

.method public static lit(F)Lcom/helger/jcodemodel/JAtomFloat;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/helger/jcodemodel/JAtomFloat;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JAtomFloat;-><init>(F)V

    return-object v0
.end method

.method public static lit(I)Lcom/helger/jcodemodel/JAtomInt;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 367
    new-instance v0, Lcom/helger/jcodemodel/JAtomInt;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JAtomInt;-><init>(I)V

    return-object v0
.end method

.method public static lit(J)Lcom/helger/jcodemodel/JAtomLong;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/helger/jcodemodel/JAtomLong;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JAtomLong;-><init>(J)V

    return-object v0
.end method

.method public static lit(Ljava/lang/String;)Lcom/helger/jcodemodel/JStringLiteral;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lcom/helger/jcodemodel/JStringLiteral;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JStringLiteral;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newArray(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JArray;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/JExpr;->newArray(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArray;

    move-result-object v0

    return-object v0
.end method

.method public static newArray(Lcom/helger/jcodemodel/AbstractJType;I)Lcom/helger/jcodemodel/JArray;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnegative;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 329
    invoke-static {p1}, Lcom/helger/jcodemodel/JExpr;->lit(I)Lcom/helger/jcodemodel/JAtomInt;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/JExpr;->newArray(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArray;

    move-result-object v0

    return-object v0
.end method

.method public static newArray(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JArray;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lcom/helger/jcodemodel/JArray;

    invoke-virtual {p0}, Lcom/helger/jcodemodel/AbstractJType;->erasure()Lcom/helger/jcodemodel/AbstractJType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/helger/jcodemodel/JArray;-><init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static predecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->predecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public static preincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 151
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->preincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public static quotify(CLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/16 v7, 0x27

    const/16 v6, 0x22

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 403
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_7

    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 407
    const-string v4, "\u0008\t\n\u000c\r\"\'\\"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 408
    if-ltz v4, :cond_3

    .line 410
    if-ne p0, v6, :cond_0

    if-eq v0, v7, :cond_1

    :cond_0
    if-ne p0, v7, :cond_2

    if-ne v0, v6, :cond_2

    .line 412
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 416
    :cond_2
    const/16 v0, 0x5c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    const-string v0, "btnfr\"\'\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :cond_3
    const/16 v4, 0x20

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7e

    if-le v0, v4, :cond_6

    .line 433
    :cond_4
    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const v4, 0xffff

    and-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    const/4 v5, 0x4

    if-ge v0, v5, :cond_5

    .line 436
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 437
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :cond_7
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ref(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JVar;)V

    return-object v0
.end method

.method public static ref(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ref(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 205
    new-instance v1, Lcom/helger/jcodemodel/JFieldRef;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-direct {v1, v0, p0}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JVar;)V

    return-object v1
.end method

.method public static ref(Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 211
    new-instance v1, Lcom/helger/jcodemodel/JFieldRef;

    const/4 v0, 0x0

    check-cast v0, Lcom/helger/jcodemodel/IJExpression;

    invoke-direct {v1, v0, p0}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v1
.end method

.method public static refthis(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJGenerable;Lcom/helger/jcodemodel/JVar;Z)V

    return-object v0
.end method

.method public static refthis(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static refthis(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJGenerable;Lcom/helger/jcodemodel/JVar;Z)V

    return-object v0
.end method

.method public static refthis(Ljava/lang/String;)Lcom/helger/jcodemodel/JFieldRef;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/helger/jcodemodel/JFieldRef;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Z)V

    return-object v0
.end method
