.class public Lcom/helger/jcodemodel/JFormatter;
.super Ljava/lang/Object;
.source "JFormatter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helger/jcodemodel/JFormatter$1;,
        Lcom/helger/jcodemodel/JFormatter$ImportedClasses;,
        Lcom/helger/jcodemodel/JFormatter$EMode;,
        Lcom/helger/jcodemodel/JFormatter$NameUsage;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final CLOSE_TYPE_ARGS:C = '\uffff'

.field public static final DEFAULT_INDENT_SPACE:Ljava/lang/String; = "    "


# instance fields
.field private final m_aCollectedReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/JFormatter$NameUsage;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

.field private final m_aPW:Ljava/io/PrintWriter;

.field private m_aPckJavaLang:Lcom/helger/jcodemodel/JPackage;

.field private m_bAtBeginningOfLine:Z

.field private m_bContainsErrorTypes:Z

.field private final m_bImportDebug:Z

.field private m_cLastChar:C

.field private m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

.field private m_nIndentLevel:I

.field private final m_sIndentSpace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/helger/jcodemodel/JFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/helger/jcodemodel/JFormatter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 378
    const-string v0, "    "

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/JFormatter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    .line 318
    new-instance v0, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;-><init>(Lcom/helger/jcodemodel/JFormatter;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    .line 324
    sget-object v0, Lcom/helger/jcodemodel/JFormatter$EMode;->PRINTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    .line 341
    iput-char v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_cLastChar:C

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_bAtBeginningOfLine:Z

    .line 748
    iput-boolean v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_bImportDebug:Z

    .line 363
    const-string v0, "PrintWriter"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string v0, "IndentSpace"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    iput-object p1, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    .line 367
    iput-object p2, p0, Lcom/helger/jcodemodel/JFormatter;->m_sIndentSpace:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 389
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/PrintWriter;

    :goto_0
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JFormatter;-><init>(Ljava/io/PrintWriter;)V

    .line 390
    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private _collectCausesNoAmbiguities(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    .line 760
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;

    .line 761
    if-nez v0, :cond_0

    .line 763
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->isAmbiguousIn(Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->containsReferencedType(Lcom/helger/jcodemodel/AbstractJClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _collectImportOuterClassIfCausesNoAmbiguities(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 841
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_0

    .line 844
    invoke-direct {p0, v0, p2}, Lcom/helger/jcodemodel/JFormatter;->_collectCausesNoAmbiguities(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/helger/jcodemodel/JFormatter;->_collectShouldBeImported(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->add(Lcom/helger/jcodemodel/AbstractJClass;)Z

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/helger/jcodemodel/JFormatter;->_collectImportOuterClassIfCausesNoAmbiguities(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)V

    goto :goto_0
.end method

.method private _collectShouldBeImported(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)Z
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    .line 787
    .line 788
    instance-of v1, p1, Lcom/helger/jcodemodel/JAnonymousClass;

    if-eqz v1, :cond_0

    .line 791
    check-cast p1, Lcom/helger/jcodemodel/JAnonymousClass;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/JAnonymousClass;->base()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    .line 793
    :cond_0
    instance-of v1, p1, Lcom/helger/jcodemodel/JNarrowedClass;

    if-eqz v1, :cond_1

    .line 796
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    .line 800
    :cond_1
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v1

    .line 801
    if-eqz v1, :cond_2

    .line 807
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    invoke-direct {p0, v1, p2}, Lcom/helger/jcodemodel/JFormatter;->_collectShouldBeImported(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 818
    :cond_2
    :goto_0
    return v0

    .line 816
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _needSpace(CC)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2c

    const/16 v4, 0x29

    const/16 v3, 0x28

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 435
    const/16 v2, 0x5d

    if-ne p0, v2, :cond_1

    const/16 v2, 0x7b

    if-ne p1, v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 437
    :cond_1
    const/16 v2, 0x3b

    if-eq p0, v2, :cond_0

    .line 439
    const v2, 0xffff

    if-ne p0, v2, :cond_2

    .line 442
    if-ne p1, v3, :cond_0

    move v0, v1

    .line 445
    goto :goto_0

    .line 449
    :cond_2
    if-ne p0, v4, :cond_3

    const/16 v2, 0x7b

    if-eq p1, v2, :cond_0

    .line 451
    :cond_3
    if-eq p0, v5, :cond_0

    const/16 v2, 0x3d

    if-eq p0, v2, :cond_0

    .line 453
    const/16 v2, 0x3d

    if-eq p1, v2, :cond_0

    .line 455
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 457
    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_4

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_4

    if-ne p1, v5, :cond_0

    :cond_4
    move v0, v1

    .line 458
    goto :goto_0

    .line 461
    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 463
    sparse-switch p1, :sswitch_data_0

    .line 473
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    goto :goto_0

    .line 476
    :cond_6
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 478
    sparse-switch p0, :sswitch_data_1

    move v0, v1

    .line 486
    goto :goto_0

    .line 489
    :cond_7
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 491
    if-ne p0, v3, :cond_0

    move v0, v1

    .line 492
    goto :goto_0

    :cond_8
    move v0, v1

    .line 495
    goto :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x3e -> :sswitch_0
        0x40 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch

    .line 478
    :sswitch_data_1
    .sparse-switch
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x5d -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private _printIsImplicitlyImported(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/AbstractJClass;)Z
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 876
    .line 877
    instance-of v2, p1, Lcom/helger/jcodemodel/JAnonymousClass;

    if-eqz v2, :cond_0

    .line 880
    check-cast p1, Lcom/helger/jcodemodel/JAnonymousClass;

    invoke-virtual {p1}, Lcom/helger/jcodemodel/JAnonymousClass;->base()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    .line 882
    :cond_0
    instance-of v2, p1, Lcom/helger/jcodemodel/JNarrowedClass;

    if-eqz v2, :cond_1

    .line 885
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->erasure()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object p1

    .line 888
    :cond_1
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v2

    .line 889
    if-nez v2, :cond_3

    .line 933
    :cond_2
    :goto_0
    return v0

    .line 895
    :cond_3
    invoke-virtual {v2}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 901
    iget-object v3, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPckJavaLang:Lcom/helger/jcodemodel/JPackage;

    if-eq v2, v3, :cond_2

    .line 909
    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 911
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v2

    .line 912
    if-eqz v2, :cond_2

    .line 920
    invoke-virtual {v2}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v3

    .line 921
    :goto_1
    if-eqz v3, :cond_4

    .line 924
    invoke-virtual {v3}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    .line 931
    :cond_4
    if-eq v2, p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 933
    goto :goto_0
.end method

.method private _spaceIfNeeded(C)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_bAtBeginningOfLine:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 502
    :goto_0
    iget v2, p0, Lcom/helger/jcodemodel/JFormatter;->m_nIndentLevel:I

    if-ge v0, v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/helger/jcodemodel/JFormatter;->m_sIndentSpace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    iput-boolean v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_bAtBeginningOfLine:Z

    .line 509
    :cond_1
    :goto_1
    return-void

    .line 507
    :cond_2
    iget-char v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_cLastChar:C

    if-eqz v0, :cond_1

    iget-char v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_cLastChar:C

    invoke-static {v0, p1}, Lcom/helger/jcodemodel/JFormatter;->_needSpace(CC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/helger/jcodemodel/JFormatter;)Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPckJavaLang:Lcom/helger/jcodemodel/JPackage;

    return-object v0
.end method

.method public static containsErrorTypes(Lcom/helger/jcodemodel/JDefinedClass;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 1025
    new-instance v0, Lcom/helger/jcodemodel/JFormatter;

    invoke-static {}, Lcom/helger/jcodemodel/util/NullWriter;->getInstance()Lcom/helger/jcodemodel/util/NullWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helger/jcodemodel/JFormatter;-><init>(Ljava/io/Writer;)V

    .line 1026
    sget-object v1, Lcom/helger/jcodemodel/JFormatter$EMode;->FIND_ERROR_TYPES:Lcom/helger/jcodemodel/JFormatter$EMode;

    iput-object v1, v0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    .line 1027
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/helger/jcodemodel/JFormatter;->m_bContainsErrorTypes:Z

    .line 1028
    invoke-virtual {v0, p0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    .line 1029
    iget-boolean v0, v0, Lcom/helger/jcodemodel/JFormatter;->m_bContainsErrorTypes:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 398
    return-void
.end method

.method public declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 716
    invoke-interface {p1, p0}, Lcom/helger/jcodemodel/IJDeclaration;->declare(Lcom/helger/jcodemodel/JFormatter;)V

    .line 717
    return-object p0
.end method

.method public generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 677
    invoke-interface {p1, p0}, Lcom/helger/jcodemodel/IJGenerable;->generate(Lcom/helger/jcodemodel/JFormatter;)V

    .line 678
    return-object p0
.end method

.method public generable(Ljava/util/Collection;)Lcom/helger/jcodemodel/JFormatter;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/helger/jcodemodel/IJGenerable;",
            ">;)",
            "Lcom/helger/jcodemodel/JFormatter;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 692
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    const/4 v0, 0x1

    .line 695
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/IJGenerable;

    .line 697
    if-nez v1, :cond_0

    .line 698
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    .line 699
    :cond_0
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 700
    const/4 v0, 0x0

    move v1, v0

    .line 701
    goto :goto_0

    .line 703
    :cond_1
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lcom/helger/jcodemodel/JFormatter$1;->$SwitchMap$com$helger$jcodemodel$JFormatter$EMode:[I

    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter$EMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 647
    :goto_0
    return-object p0

    .line 633
    :pswitch_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;

    .line 634
    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;

    invoke-direct {v0, p0, p1}, Lcom/helger/jcodemodel/JFormatter$NameUsage;-><init>(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_0
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->setVariableName()V

    goto :goto_0

    .line 644
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public indent()Lcom/helger/jcodemodel/JFormatter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 429
    iget v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_nIndentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_nIndentLevel:I

    .line 430
    return-object p0
.end method

.method public isPrinting()Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    sget-object v1, Lcom/helger/jcodemodel/JFormatter$EMode;->PRINTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newline()Lcom/helger/jcodemodel/JFormatter;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    sget-object v1, Lcom/helger/jcodemodel/JFormatter$EMode;->PRINTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 661
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_cLastChar:C

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_bAtBeginningOfLine:Z

    .line 664
    :cond_0
    return-object p0
.end method

.method public outdent()Lcom/helger/jcodemodel/JFormatter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 417
    iget v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_nIndentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_nIndentLevel:I

    .line 418
    return-object p0
.end method

.method public print(C)Lcom/helger/jcodemodel/JFormatter;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    sget-object v1, Lcom/helger/jcodemodel/JFormatter$EMode;->PRINTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    if-ne v0, v1, :cond_0

    .line 523
    const v0, 0xffff

    if-ne p1, v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 532
    :goto_0
    iput-char p1, p0, Lcom/helger/jcodemodel/JFormatter;->m_cLastChar:C

    .line 534
    :cond_0
    return-object p0

    .line 529
    :cond_1
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/JFormatter;->_spaceIfNeeded(C)V

    .line 530
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method

.method public print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    sget-object v1, Lcom/helger/jcodemodel/JFormatter$EMode;->PRINTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/JFormatter;->_spaceIfNeeded(C)V

    .line 550
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPW:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_cLastChar:C

    .line 553
    :cond_0
    return-object p0
.end method

.method public statement(Lcom/helger/jcodemodel/IJStatement;)Lcom/helger/jcodemodel/JFormatter;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 730
    invoke-interface {p1, p0}, Lcom/helger/jcodemodel/IJStatement;->state(Lcom/helger/jcodemodel/JFormatter;)V

    .line 731
    return-object p0
.end method

.method public type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 577
    sget-object v0, Lcom/helger/jcodemodel/JFormatter$1;->$SwitchMap$com$helger$jcodemodel$JFormatter$EMode:[I

    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter$EMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 616
    :cond_0
    :goto_0
    return-object p0

    .line 580
    :pswitch_0
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v1

    .line 581
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;

    .line 582
    if-nez v0, :cond_1

    .line 584
    new-instance v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;

    invoke-direct {v0, p0, v1}, Lcom/helger/jcodemodel/JFormatter$NameUsage;-><init>(Lcom/helger/jcodemodel/JFormatter;Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_1
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->addReferencedType(Lcom/helger/jcodemodel/AbstractJClass;)Z

    goto :goto_0

    .line 592
    :pswitch_1
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->contains(Lcom/helger/jcodemodel/AbstractJClass;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->_package()Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPckJavaLang:Lcom/helger/jcodemodel/JPackage;

    if-ne v0, v1, :cond_3

    .line 595
    :cond_2
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 599
    :cond_3
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->outer()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_4

    .line 602
    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 607
    :cond_4
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 612
    :pswitch_2
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_bContainsErrorTypes:Z

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public type(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JFormatter;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    goto :goto_0
.end method

.method public var(Lcom/helger/jcodemodel/JVar;)Lcom/helger/jcodemodel/JFormatter;
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p1, p0}, Lcom/helger/jcodemodel/JVar;->bind(Lcom/helger/jcodemodel/JFormatter;)V

    .line 745
    return-object p0
.end method

.method write(Lcom/helger/jcodemodel/JDefinedClass;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 944
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aPckJavaLang:Lcom/helger/jcodemodel/JPackage;

    .line 947
    sget-object v0, Lcom/helger/jcodemodel/JFormatter$EMode;->COLLECTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    .line 948
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 949
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->clear()V

    .line 950
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    .line 957
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->add(Lcom/helger/jcodemodel/AbstractJClass;)Z

    .line 961
    iget-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_aCollectedReferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JFormatter$NameUsage;

    .line 963
    invoke-virtual {v0, p1}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->isAmbiguousIn(Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->isVariableName()Z

    move-result v2

    if-nez v2, :cond_2

    .line 965
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->getSingleReferencedType()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    .line 967
    invoke-direct {p0, v0, p1}, Lcom/helger/jcodemodel/JFormatter;->_collectShouldBeImported(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 969
    iget-object v2, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-virtual {v2, v0}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->add(Lcom/helger/jcodemodel/AbstractJClass;)Z

    goto :goto_0

    .line 973
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/helger/jcodemodel/JFormatter;->_collectImportOuterClassIfCausesNoAmbiguities(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)V

    goto :goto_0

    .line 978
    :cond_2
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->isTypeName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter$NameUsage;->getReferencedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 981
    invoke-direct {p0, v0, p1}, Lcom/helger/jcodemodel/JFormatter;->_collectImportOuterClassIfCausesNoAmbiguities(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/JDefinedClass;)V

    goto :goto_1

    .line 990
    :cond_3
    sget-object v0, Lcom/helger/jcodemodel/JFormatter$EMode;->PRINTING:Lcom/helger/jcodemodel/JFormatter$EMode;

    iput-object v0, p0, Lcom/helger/jcodemodel/JFormatter;->m_eMode:Lcom/helger/jcodemodel/JFormatter$EMode;

    .line 992
    sget-boolean v0, Lcom/helger/jcodemodel/JFormatter;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/helger/jcodemodel/JDefinedClass;->parentContainer()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/helger/jcodemodel/IJClassContainer;->isPackage()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this method is only for a pacakge-level class"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 993
    :cond_4
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JDefinedClass;->parentContainer()Lcom/helger/jcodemodel/IJClassContainer;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JPackage;

    .line 994
    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 996
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    .line 997
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 1001
    :cond_5
    const/4 v0, 0x0

    .line 1002
    iget-object v1, p0, Lcom/helger/jcodemodel/JFormatter;->m_aImportedClasses:Lcom/helger/jcodemodel/JFormatter$ImportedClasses;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JFormatter$ImportedClasses;->getAllSorted()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/AbstractJClass;

    .line 1007
    invoke-direct {p0, v0, p1}, Lcom/helger/jcodemodel/JFormatter;->_printIsImplicitlyImported(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/AbstractJClass;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1009
    const-string v1, "import"

    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 1010
    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 1015
    goto :goto_2

    .line 1017
    :cond_6
    if-eqz v1, :cond_7

    .line 1018
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 1020
    :cond_7
    invoke-virtual {p0, p1}, Lcom/helger/jcodemodel/JFormatter;->declaration(Lcom/helger/jcodemodel/IJDeclaration;)Lcom/helger/jcodemodel/JFormatter;

    .line 1021
    return-void

    :cond_8
    move v0, v1

    goto :goto_3
.end method
