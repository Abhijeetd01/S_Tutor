.class public interface abstract Lcom/helger/jcodemodel/IJClassContainer;
.super Ljava/lang/Object;
.source "IJClassContainer.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJOwned;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C",
        "LASSTYPE::Lcom/helger/jcodemodel/IJClassContainer",
        "<TC",
        "LASSTYPE;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/helger/jcodemodel/IJOwned;"
    }
.end annotation


# virtual methods
.method public abstract _annotationTypeDeclaration(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _annotationTypeDeclaration(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _class(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _class(ILjava/lang/String;Lcom/helger/jcodemodel/EClassType;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/helger/jcodemodel/EClassType;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _class(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _enum(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract _enum(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _interface(ILjava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract _interface(Ljava/lang/String;)Lcom/helger/jcodemodel/IJClassContainer;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC",
            "LASSTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helger/jcodemodel/JClassAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract classes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TC",
            "LASSTYPE;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getPackage()Lcom/helger/jcodemodel/JPackage;
.end method

.method public abstract isClass()Z
.end method

.method public abstract isPackage()Z
.end method

.method public abstract parentContainer()Lcom/helger/jcodemodel/IJClassContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helger/jcodemodel/IJClassContainer",
            "<*>;"
        }
    .end annotation
.end method
