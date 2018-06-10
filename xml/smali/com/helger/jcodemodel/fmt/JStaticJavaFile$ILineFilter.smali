.class public interface abstract Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;
.super Ljava/lang/Object;
.source "JStaticJavaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/fmt/JStaticJavaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILineFilter"
.end annotation


# virtual methods
.method public abstract process(Ljava/lang/String;)Ljava/lang/String;
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
