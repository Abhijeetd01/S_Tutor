.class public final Lcom/helger/jcodemodel/util/ClassNameComparator;
.super Ljava/lang/Object;
.source "ClassNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/helger/jcodemodel/AbstractJClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final s_aInstance:Lcom/helger/jcodemodel/util/ClassNameComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/helger/jcodemodel/util/ClassNameComparator;

    invoke-direct {v0}, Lcom/helger/jcodemodel/util/ClassNameComparator;-><init>()V

    sput-object v0, Lcom/helger/jcodemodel/util/ClassNameComparator;->s_aInstance:Lcom/helger/jcodemodel/util/ClassNameComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/helger/jcodemodel/util/ClassNameComparator;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/helger/jcodemodel/util/ClassNameComparator;->s_aInstance:Lcom/helger/jcodemodel/util/ClassNameComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/AbstractJClass;)I
    .locals 6
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

    const/4 v0, -0x1

    .line 75
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractJClass;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Lcom/helger/jcodemodel/AbstractJClass;->fullName()Ljava/lang/String;

    move-result-object v3

    .line 84
    const-string v4, "java"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 85
    const-string v5, "java"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 87
    if-eqz v4, :cond_3

    if-eqz v5, :cond_0

    .line 89
    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    check-cast p1, Lcom/helger/jcodemodel/AbstractJClass;

    check-cast p2, Lcom/helger/jcodemodel/AbstractJClass;

    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/util/ClassNameComparator;->compare(Lcom/helger/jcodemodel/AbstractJClass;Lcom/helger/jcodemodel/AbstractJClass;)I

    move-result v0

    return v0
.end method
