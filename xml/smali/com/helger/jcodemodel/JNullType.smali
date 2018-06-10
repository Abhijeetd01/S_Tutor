.class public final Lcom/helger/jcodemodel/JNullType;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JNullType.java"


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/JCodeModel;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 62
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public _implements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JNullType;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->_package(Ljava/lang/String;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 75
    const-string v0, "null"

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 68
    const-string v0, "null"

    return-object v0
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/helger/jcodemodel/JTypeVar;",
            "Ljava/util/List",
            "<+",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;)",
            "Lcom/helger/jcodemodel/AbstractJClass;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 115
    return-object p0
.end method
