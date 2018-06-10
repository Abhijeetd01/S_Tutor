.class public final Lcom/helger/jcodemodel/JOp;
.super Ljava/lang/Object;
.source "JOp.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _instanceof(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 320
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "instanceof"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static band(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 237
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "&"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static bor(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 243
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string/jumbo v1, "|"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static cand(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
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
    .line 250
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    if-ne p0, v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object p1

    .line 252
    :cond_1
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    if-ne p1, v0, :cond_2

    move-object p1, p0

    .line 253
    goto :goto_0

    .line 254
    :cond_2
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    if-ne p0, v0, :cond_3

    move-object p1, p0

    .line 255
    goto :goto_0

    .line 256
    :cond_3
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    if-eq p1, v0, :cond_0

    .line 258
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "&&"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public static complement(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnary;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/helger/jcodemodel/JOpUnary;

    const-string/jumbo v1, "~"

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JOpUnary;-><init>(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static cond(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpTernary;
    .locals 6
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
    .line 330
    new-instance v0, Lcom/helger/jcodemodel/JOpTernary;

    const-string v2, "?"

    const-string v4, ":"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JOpTernary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static cor(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
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
    .line 264
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    if-ne p0, v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-object p0

    .line 266
    :cond_1
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    if-ne p1, v0, :cond_2

    move-object p0, p1

    .line 267
    goto :goto_0

    .line 268
    :cond_2
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    if-ne p0, v0, :cond_3

    move-object p0, p1

    .line 269
    goto :goto_0

    .line 270
    :cond_3
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    if-eq p1, v0, :cond_0

    .line 272
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string/jumbo v1, "||"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static decr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 155
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->postdecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public static div(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 207
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "/"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static eq(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 308
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "=="

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static gt(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 296
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, ">"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static gte(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 302
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, ">="

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static hasTopOp(Lcom/helger/jcodemodel/IJExpression;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 67
    instance-of v0, p0, Lcom/helger/jcodemodel/JOpUnary;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/helger/jcodemodel/JOpBinary;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/helger/jcodemodel/JOp;->postincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;

    move-result-object v0

    return-object v0
.end method

.method public static lt(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 284
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "<"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static lte(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 290
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "<="

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static minus(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 195
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "-"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static minus(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnary;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/helger/jcodemodel/JOpUnary;

    const-string v1, "-"

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JOpUnary;-><init>(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static mod(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 213
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "%"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static mul(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 201
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "*"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static ne(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 314
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "!="

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static not(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/IJExpression;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    if-ne p0, v0, :cond_0

    .line 90
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->FALSE:Lcom/helger/jcodemodel/JAtom;

    if-ne p0, v0, :cond_1

    .line 92
    sget-object v0, Lcom/helger/jcodemodel/JExpr;->TRUE:Lcom/helger/jcodemodel/JAtom;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lcom/helger/jcodemodel/JOpUnary;

    const-string v1, "!"

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JOpUnary;-><init>(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    goto :goto_0
.end method

.method public static plus(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 189
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "+"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static postdecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/helger/jcodemodel/JOpUnaryTight;

    const-string v1, "--"

    invoke-direct {v0, p0, v1}, Lcom/helger/jcodemodel/JOpUnaryTight;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static postincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/helger/jcodemodel/JOpUnaryTight;

    const-string v1, "++"

    invoke-direct {v0, p0, v1}, Lcom/helger/jcodemodel/JOpUnaryTight;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V

    return-object v0
.end method

.method public static predecr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/helger/jcodemodel/JOpUnaryTight;

    const-string v1, "--"

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JOpUnaryTight;-><init>(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static preincr(Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpUnaryTight;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/helger/jcodemodel/JOpUnaryTight;

    const-string v1, "++"

    invoke-direct {v0, v1, p0}, Lcom/helger/jcodemodel/JOpUnaryTight;-><init>(Ljava/lang/String;Lcom/helger/jcodemodel/IJExpression;)V

    return-object v0
.end method

.method public static shl(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 219
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "<<"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static shr(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 225
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, ">>"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static shrz(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 231
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, ">>>"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method

.method public static xor(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/IJExpression;)Lcom/helger/jcodemodel/JOpBinary;
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
    .line 278
    new-instance v0, Lcom/helger/jcodemodel/JOpBinary;

    const-string v1, "^"

    invoke-direct {v0, p0, v1, p1}, Lcom/helger/jcodemodel/JOpBinary;-><init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;Lcom/helger/jcodemodel/IJGenerable;)V

    return-object v0
.end method
