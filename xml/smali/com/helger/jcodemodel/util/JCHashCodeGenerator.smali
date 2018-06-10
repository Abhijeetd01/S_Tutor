.class public final Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
.super Ljava/lang/Object;
.source "JCHashCodeGenerator.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static final ILLEGAL_HASHCODE:I = 0x0

.field public static final INITIAL_HASHCODE:I = 0x11


# instance fields
.field private m_bClosed:Z

.field private m_nHC:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_bClosed:Z

    .line 102
    const/16 v0, 0x11

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 143
    iput p1, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_bClosed:Z

    .line 102
    const/16 v0, 0x11

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "class"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    .line 139
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 115
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    :goto_0
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;-><init>(Ljava/lang/Class;)V

    .line 116
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0
.end method

.method private _checkClosed()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_bClosed:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hash code cannot be changed anymore!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method public static getDerived(I)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed hash code is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    new-instance v0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;-><init>(I)V

    return-object v0
.end method

.method public static varargs getHashCode(I[Ljava/lang/Object;)I
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 625
    invoke-static {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getDerived(I)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    move-result-object v1

    .line 626
    if-eqz p1, :cond_0

    .line 627
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 628
    invoke-virtual {v1, v3}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode()I

    move-result v0

    return v0
.end method

.method public static varargs getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 605
    new-instance v1, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    invoke-direct {v1, p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;-><init>(Ljava/lang/Object;)V

    .line 606
    if-eqz p1, :cond_0

    .line 607
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 608
    invoke-virtual {v1, v3}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {v1}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(B)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 178
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(IB)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 179
    return-object p0
.end method

.method public append(C)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 193
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(IC)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 194
    return-object p0
.end method

.method public append(D)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 208
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1, p2}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ID)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 209
    return-object p0
.end method

.method public append(F)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 223
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(IF)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 224
    return-object p0
.end method

.method public append(I)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 238
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(II)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 239
    return-object p0
.end method

.method public append(J)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 253
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1, p2}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(IJ)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 254
    return-object p0
.end method

.method public append(Ljava/lang/Enum;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/util/JCHashCodeGenerator;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 298
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 299
    return-object p0
.end method

.method public append(Ljava/lang/Iterable;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/helger/jcodemodel/util/JCHashCodeGenerator;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 493
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 494
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 283
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 284
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 464
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 465
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 480
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 481
    return-object p0
.end method

.method public append(Ljava/util/Map;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/helger/jcodemodel/util/JCHashCodeGenerator;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 506
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 507
    return-object p0
.end method

.method public append(Lorg/w3c/dom/Node;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 519
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 520
    return-object p0
.end method

.method public append(S)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 268
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(IS)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 269
    return-object p0
.end method

.method public append(Z)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 163
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(IZ)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 164
    return-object p0
.end method

.method public append([B)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 328
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 329
    return-object p0
.end method

.method public append([C)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 343
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 344
    return-object p0
.end method

.method public append([D)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 358
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 359
    return-object p0
.end method

.method public append([F)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 373
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 374
    return-object p0
.end method

.method public append([I)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 388
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 389
    return-object p0
.end method

.method public append([J)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 403
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 404
    return-object p0
.end method

.method public append([Ljava/lang/Enum;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/helger/jcodemodel/util/JCHashCodeGenerator;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 448
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 449
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 433
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 434
    return-object p0
.end method

.method public append([S)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 418
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 419
    return-object p0
.end method

.method public append([Z)Lcom/helger/jcodemodel/util/JCHashCodeGenerator;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->_checkClosed()V

    .line 313
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/util/JCHashCodeCalculator;->append(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 314
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHashCode()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_bClosed:Z

    .line 537
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    if-nez v0, :cond_0

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    .line 539
    :cond_0
    iget v0, p0, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->m_nHC:I

    return v0
.end method

.method public getHashCodeObj()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode()I

    move-result v0

    return v0
.end method
