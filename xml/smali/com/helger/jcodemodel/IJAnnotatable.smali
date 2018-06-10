.class public interface abstract Lcom/helger/jcodemodel/IJAnnotatable;
.super Ljava/lang/Object;
.source "IJAnnotatable.java"


# virtual methods
.method public abstract annotate(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JAnnotationUse;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract annotate(Ljava/lang/Class;)Lcom/helger/jcodemodel/JAnnotationUse;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/helger/jcodemodel/JAnnotationUse;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract annotate2(Ljava/lang/Class;)Lcom/helger/jcodemodel/IJAnnotationWriter;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Lcom/helger/jcodemodel/IJAnnotationWriter",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TW;>;)TW;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract annotations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/helger/jcodemodel/JAnnotationUse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
