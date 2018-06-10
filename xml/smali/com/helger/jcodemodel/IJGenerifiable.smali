.class public interface abstract Lcom/helger/jcodemodel/IJGenerifiable;
.super Ljava/lang/Object;
.source "IJGenerifiable.java"


# virtual methods
.method public abstract generify(Ljava/lang/String;)Lcom/helger/jcodemodel/JTypeVar;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract generify(Ljava/lang/String;Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JTypeVar;
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
.end method

.method public abstract generify(Ljava/lang/String;Ljava/lang/Class;)Lcom/helger/jcodemodel/JTypeVar;
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/helger/jcodemodel/JTypeVar;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract typeParamList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JTypeVar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract typeParams()[Lcom/helger/jcodemodel/JTypeVar;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
